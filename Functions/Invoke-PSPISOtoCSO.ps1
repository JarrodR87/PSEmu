function Invoke-PSPISOtoCSO {
    <#
        .SYNOPSIS
            Creates PSP CSO from ISO
        .DESCRIPTION
            Creates a CSO from an ISO from a PSP Game
        .PARAMETER ISOPath
            Path to original ISO
        .EXAMPLE
            Invoke-PSPCSOtoISO -ISOPath C:\Temp\CSO.iso
    #>
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]$ISOPath 
    ) 
    BEGIN { 
        $maxcsoexe = Join-Path $PSScriptRoot "\Utility\maxcso.exe"
    } #BEGIN

    PROCESS {
        & $maxcsoexe $ISOPath
    } #PROCESS

    END { 

    } #END

} #FUNCTION