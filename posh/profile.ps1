. (Join-Path $PSScriptRoot mindbox.ps1)
. (Join-Path $PSScriptRoot chocolatey-profile.ps1)
. (Join-Path $PSScriptRoot helpers.ps1)
. (Join-Path $PSScriptRoot prompt.ps1)
. (Join-Path $PSScriptRoot k8s-helpers.ps1)

function Exit-CurrentSession { exit }
New-Alias $([char]4) Exit-CurrentSession

Import-Module posh-git
$GitPromptSettings.PathStatusSeparator = [string]::Empty