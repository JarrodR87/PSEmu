function Invoke-PSNAccountIDConversion {
    <#
        .SYNOPSIS
            Converts PSN Account ID to Base64 encoded version
        .DESCRIPTION
            Need to get the PSN Account ID from the PSN Site either via a data request, or traffic inspection
        .PARAMETER PSNAccountID
            Account ID from PSN
        .EXAMPLE
            Invoke-PSNAccountIDConversion -PSNAccountID XXXXXXXXXXXXXXXXXXX
    #>
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]$PSNAccountID
    ) 
    BEGIN { 
        $user_id = [long]$PSNAccountID
    } #BEGIN

    PROCESS {
        $user_id_bytes = [BitConverter]::GetBytes($user_id)
        $user_id_base64 = [Convert]::ToBase64String($user_id_bytes)
    } #PROCESS

    END { 
        $user_id_base64
    } #END

} #FUNCTION