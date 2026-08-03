[CmdletBinding()]
param(
    [string]$Destination,
    [switch]$Force
)

$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'installable-skills'
if (-not $Destination) {
    $codexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME '.codex' }
    $Destination = Join-Path $codexHome 'skills'
}

New-Item -ItemType Directory -Force -Path $Destination | Out-Null
foreach ($name in @('dt', 'sdlc', 'dt-sdlc')) {
    $from = Join-Path $source $name
    $to = Join-Path $Destination $name
    if (Test-Path $to) {
        if (-not $Force) {
            throw "Skill already exists: $to. Re-run with -Force to replace it."
        }
        Remove-Item -LiteralPath $to -Recurse -Force
    }
    Copy-Item -LiteralPath $from -Destination $to -Recurse
    Write-Output "Installed $name -> $to"
}

Write-Output 'Restart Codex so the installed skills are discovered.'
