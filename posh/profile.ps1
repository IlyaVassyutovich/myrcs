$LastExitCodeBackup = $LASTEXITCODE

Write-Debug "Checking Mindbox work station flag"
$IsMindboxWorkStation = ${ENV:mindbox/isMindboxWorkStation}
Write-Debug "Mindbox Work station flag is $IsMindboxWorkStation"
if ($IsMindboxWorkStation -eq $True) {
	Write-Debug "Evaluating Mindbox-specific settings"
	. (Join-Path $PSScriptRoot mindbox.ps1)
}

. (Join-Path $PSScriptRoot chocolatey-profile.ps1)
. (Join-Path $PSScriptRoot helpers.ps1)
. (Join-Path $PSScriptRoot prompt.ps1)
. (Join-Path $PSScriptRoot k8s-helpers.ps1)

function Exit-CurrentSession { exit }
New-Alias $([char]4) Exit-CurrentSession

Import-Module posh-git
$GitPromptSettings.PathStatusSeparator = [string]::Empty

$global:LASTEXITCODE = $LastExitCodeBackup
