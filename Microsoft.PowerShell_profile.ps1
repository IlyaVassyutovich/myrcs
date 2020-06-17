New-Alias kc kubectl
New-Alias tf "C:\bin\terraform.exe"
New-Alias helmfile "C:\bin\helmfile.exe"

$mr = $env:mr

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function New-SymbolicLink ([string] $LinkValue, [string] $TargetPath) {
  New-Item -ItemType SymbolicLink -Verbose -Path $LinkValue -Value $TargetPath
}

function Get-EffectiveSelector([string] $AppLabel, [string] $Selector) {
  if (-Not [string]::IsNullOrWhiteSpace($Selector)) {
    $EffectiveSelector = $Selector
  }
  elseif (-Not [string]::IsNullOrWhiteSpace($AppLabel)) {
    $EffectiveSelector = "app=$AppLabel"
  }
  else {
    throw "Provide selector or app label"
  }

  return $EffectiveSelector
}

function Watch-PodLogs ([string] $AppLabel, [string] $Selector) {
  kubectl logs --follow="true" --selector="$(Get-EffectiveSelector $AppLabel $Selector)" --since="60s"
  # TODO: implement reconnection, e. g. after deployment rollout
}

function Get-PodName ([string] $AppLabel, [string] $Selector)
{
  $PodName = (kubectl get pod --selector="$(Get-EffectiveSelector $AppLabel $Selector)" --output=json | ConvertFrom-Json).items.metadata.name `
    | Select-Object -First 1
  return $PodName
}
