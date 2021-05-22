function Invoke-ConverttoCHD {
    <#
        .SYNOPSIS
            Converts TO chd fILE
        .DESCRIPTION
            Converts files to CHD
        .PARAMETER ImagePath
            Path to original Image
        .PARAMETER OutputPath
            Path to Output CHD
        .EXAMPLE
            Invoke-ConverttoCHD -ImagePath C:\Temp\Test.iso -OutputPath C:\Temp\Test.CHD
    #>
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]$ImagePath,
        [Parameter(Mandatory = $true)]$OutputPath
    ) 
    BEGIN { 

        $OutputPath = $OutputPath.Trimend('\')
        $OutputPath = $OutputPath + '\'

        $chdmanexe = Join-Path $PSScriptRoot "\Utility\chdman.exe"
        $Output = ($ImagePath).Split('\') | Select-Object -Last 1
        $Output = $Output.Trim('.cue')
        $Output = $Output.Trim('.iso')
        $Output = $Output.Trim('.gdi')
        $Output = $OutputPath + $Output + '.chd'
        $Output
    } #BEGIN

    PROCESS {
        & $chdmanexe createcd -i $ImagePath -o $Output
    } #PROCESS

    END { 

    } #END

} #FUNCTION