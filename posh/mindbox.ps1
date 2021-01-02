$_mr = $env:mr

if ($_mr)
{
	$global:mindbox = @{
		root      = $_mr;
		product   = Join-Path $_mr "DirectCrm";
		frontend  = Join-Path $_mr "frontend";
		uikit     = Join-Path $_mr "ui-kit";
		messaging = Join-Path $_mr "Messaging";
		wpg       = Join-Path $_mr "WebPushGate";
		ph        = Join-Path $_mr "PushHub";
	}
}


function Get-ProjectInfo ([string] $ProjectSystemName) {
	$FancyProjectInfoScript = "D:\vasutovich\Documents\LINQPad Queries\Mindbox Services\Nexus\FancyProjectInfo.linq"
	if (-Not (Test-Path $FancyProjectInfoScript)) {
		throw "Project info script not found at `"$FancyProjectInfoScript`""
	}

	Invoke-LinqPadScript $FancyProjectInfoScript $ProjectSystemName
}

function Open-Solution {
	Write-Debug "Checking Rider Launcher presence"
	$RiderLauncher = Get-Command "rider" -ErrorAction SilentlyContinue
	if ($null -eq $RiderLauncher) {
		throw "Rider Launched not found in PATH."
	}
	Write-Debug "Rider Launcher found"

	Write-Debug "Looking for solution files"
	$SolutionCandidates = Get-ChildItem ./ -Recurse -Include "*.sln"
	if ($SolutionCandidates.Count -ne 1) {
		Write-Debug "Solution candidates found: $($SolutionCandidates.Count)"
		throw "Unable to determine solution file to open."
	}

	$SolutionToOpen = $SolutionCandidates[0]
	Write-Debug "Launching Rider for $SolutionToOpen"
	& $RiderLauncher $SolutionToOpen
}

function Start-FreshmanChrome
{
	$ChromeBinary = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
	if (-Not (Test-Path $ChromeBinary))
	{
		throw [System.IO.FileNotFoundException] "Could not chrome binary: `"$ChromeBinary`""
	}

	$FreshmanProfile = Join-Path -Path $ENV:LOCALAPPDATA -ChildPath "Google\Chrome\User Data\Freshman"
	if (Test-Path $FreshmanProfile)
	{
		Remove-Item -Recurse $FreshmanProfile
	}

	Start-Process `
		-FilePath $ChromeBinary `
		-ArgumentList "--profile-directory=`"Freshman`"" `
		-WindowStyle Maximized
}