New-Alias kc kubectl
New-Alias tf "C:\bin\terraform.exe"
New-Alias helmfile "C:\bin\helmfile.exe"

$_mr = $env:mr

if ($_mr) {
	$mindbox = @{
		root      = $_mr;
		product   = Join-Path $_mr "DirectCrm";
		frontend  = Join-Path $_mr "frontend";
		uikit     = Join-Path $_mr "ui-kit";
		messaging = Join-Path $_mr "Messaging";
		wpg       = Join-Path $_mr "WebPushGate"
	}  
}

. (Join-Path $PSScriptRoot chocolatey-profile.ps1)
. (Join-Path $PSScriptRoot helpers.ps1)
. (Join-Path $PSScriptRoot prompt.ps1)
. (Join-Path $PSScriptRoot k8s-helpers.ps1)
