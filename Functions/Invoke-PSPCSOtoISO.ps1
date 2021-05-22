function Invoke-PSPCSOtoISO {
    <#
        .SYNOPSIS
            Converts PSP CSO to ISO
        .DESCRIPTION
            Converts a CSO to an ISO from a PSP Game
        .PARAMETER CSOPath
            Path to original CSO
        .PARAMETER ISOPath
            Path to output ISO
        .EXAMPLE
            Invoke-PSPCSOtoISO -CSOPath C:\Temp\CSO.cso -ISOPath C:\Temp\ISO.iso
    #>
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]$CSOPath,
        [Parameter(Mandatory = $true)]$ISOPath
    ) 
    BEGIN { 
        $maxcsoexe = Join-Path $PSScriptRoot "\Utility\maxcso.exe"
    } #BEGIN

    PROCESS {
        & $maxcsoexe --decompress $CSOPath -o $ISOPath
    } #PROCESS

    END { 

    } #END

} #FUNCTION