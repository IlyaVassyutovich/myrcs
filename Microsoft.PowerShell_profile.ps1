New-Alias kc kubectl
New-Alias tf "C:\bin\terraform.exe"
New-Alias helmfile "C:\bin\helmfile.exe"

$mr = $env:mr

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function New-SymbolicLink ([string] $LinkValue, [string] $TargetPath)
{
  New-Item -ItemType SymbolicLink -Verbose -Path $LinkValue -Value $TargetPath
}
