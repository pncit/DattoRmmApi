function New-RmmApiRequest {
    <#
    .SYNOPSIS 
    Performs a query against the Datto RMM API

    .DESCRIPTION
    This will return the result of the specified API request
    A DattoRmmApi session must have been initiated with Start-RmmApiSession

    .PARAMETER method
    API Method (GET, POST, PUT, or DELETE)

    .PARAMETER endpoint
    Endpoint for API request.
    For endpoint information, see Swagger links at https://zinfandel-api.centrastage.net/api/swagger-ui.html
    Platform-specific documentation: https://[platform]-api.centrastage.net/api/swagger-ui.html

    .PARAMETER requestBody
    json-formatted body for POST or PUT requests

    .OUTPUTS
    Response data as System.Object or System.Array

    .EXAMPLE
    $response = New-RmmApiRequest -method GET -endpoint "account/variables"
    #>
    param 
    (
        [parameter(Mandatory=$true)]
        [ValidateSet("GET","POST","PUT","DELETE")]
        [string]$method,

        [parameter(Mandatory=$true)]
        [validateNotNullorEmpty()]
        [string]$endpoint,

        [parameter(Mandatory=$false)]
        [string]$requestBody
    )

    if ( $null -eq $script:rmmApiUrl -or $null -eq $script:rmmApiAccessToken ) {
        throw ( 'In order to use the DattoRmmApi PowerShell Module, you must first run Start-RmmApiSession.
        See https://github.com/pncit/DattoRmmApi/blob/main/README.md for more information.' )
    }

    Write-Debug -Message "Method: $method"
    Write-Debug -Message "Endpoint: $endpoint"
    Write-Debug -Message "RequestBody: $requestBody"

    # some calls will just use the endpoint to add to the base $apiUrl (e.g. 'account/devices'), other calls
    # will include the entire uri (e.g. when using nextPageUrl or prevPageUrl)
    if ( $endpoint.Substring(0,[math]::min($endpoint.Length,$script:rmmApiUrl.Length)) -eq $script:rmmApiUrl ) {
        $uri = $endpoint
    } else {
        $uri = "$script:rmmApiUrl/$endpoint"
    }

    Write-Debug -Message "Uri: $uri"

    #set the parameters for the request
    $params = @{
        Uri         =	$uri
        Method      =	$method
        ContentType	= 	'application/json'
        Headers     =	@{
            'Authorization'	=	'Bearer {0}' -f $script:RmmApiAccessToken
        }
    }

    #if body was defined (patch or put), add to params
    If ( $requestBody ) {
        $params.Add( 'Body' , $requestBody )
    }

    #make api request
    $response = ( Invoke-WebRequest @params -UseBasicParsing ) | Select-Object StatusCode,Content

    #if we got good data, convert it from json before returning it
    if ( $response.statusCode -eq 200 ) {
        $content = $response.content | ConvertFrom-Json
        if ( $null -eq $content.pageDetails ) {
            return $content
        } else {
            $member = $content | Get-Member | Where-Object { $_.MemberType -eq "NoteProperty" -and $_.Name -ne "pageDetails" } | Select-Object -ExpandProperty 'name' 
            if ( $member.GetTypeCode() -ne "String" ) {
                throw "Unable to process API response."
            }
            if ( $null -eq $content.pageDetails.nextPageUrl ) {
                return $content.$member
            } else {
                $paramsRest = @{
                    method = $method
                    endpoint = $content.pageDetails.nextPageUrl
                }
                $restOfResponse = New-RmmApiRequest @paramsRest  
                return $content.$member + $restOfResponse
            }
        }
    }
    
    # return reponse as long as status is not 429 or 403 (indicating rate limit issues that neccessitate a cool-down)
    if ( $response.statusCode -ne 429 -and $response.statusCode -ne 403 ) {
        return $response.content
    } else {
        #pause for cool down and try again
        if ( $response.statusCode -eq 429 ) {
            Start-Sleep -s 61
        } elseif ( $response.statusCode -eq 403 ) {
            Start-Sleep -s 601
        } 
        
        #set the params to call this function again with the same settings
        $paramsOrig = @{
            method = $method
            endpoint = $endpoint
        }
        return New-RmmApiRequest @paramsOrig
    }
}