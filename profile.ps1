Set-PSReadlineKeyHandler -Key ctrl+d -Function DeleteCharOrExit

oh-my-posh --init --shell pwsh --config $PSScriptRoot\.mytheme.omp.json | Invoke-Expression

$env:DOTNET_NOLOGO = 1
$env:DOTNET_CLI_TELEMETRY_OPTOUT = 1
$env:DTONET_HTTPREPL_TELEMETRY_OPTOUT = 1

$vswhere = Join-Path -Path ${env:ProgramFiles(x86)} -ChildPath 'Microsoft Visual Studio\Installer\vswhere.exe'

function Start-VS {
    [CmdletBinding()]
    param(
        [Parameter()]
        [string] $SolututionFile = '*.sln'
    )

    if($SolututionFile -eq '*.sln') {
        $SolututionFile = get-item $SolututionFile
    }
    $visualStudio = & $vswhere -latest -property productPath
    & $visualStudio $SolututionFile
}
