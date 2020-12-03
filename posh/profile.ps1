New-Alias kc kubectl
New-Alias tf "C:\bin\terraform.exe"
New-Alias helmfile "C:\bin\helmfile.exe"

. (Join-Path $PSScriptRoot mindbox.ps1)
. (Join-Path $PSScriptRoot chocolatey-profile.ps1)
. (Join-Path $PSScriptRoot helpers.ps1)
. (Join-Path $PSScriptRoot prompt.ps1)
. (Join-Path $PSScriptRoot k8s-helpers.ps1)

Import-Module posh-git
$GitPromptSettings.PathStatusSeparator = [string]::Empty