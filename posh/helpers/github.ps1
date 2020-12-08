function New-PullRequest() {
	$GitStatus = Get-GitStatus -Force
	if ($null -EQ $GitStatus) {
		throw "Not in git repo."
	}

	$GitHubSettingsFilePath = "./.git/github.json"
	if (-not (Test-Path $GitHubSettingsFilePath -PathType Leaf)) {
		throw "GitHub settings not found."
	}

	$RepositoryUri = Get-Content $GitHubSettingsFilePath | ConvertFrom-Json | Select-Object -ExpandProperty repositoryUri
	$NewPullRequestUri = "$($RepositoryUri)/compare/$($GitStatus.Branch)?expand=1"

	Start-Process $NewPullRequestUri
}
New-Alias npr "New-PullRequest"

function Open-GitHubRepository() {
	$GitStatus = Get-GitStatus -Force
	if ($null -EQ $GitStatus) {
		throw "Not in git repo."
	}

	$GitHubSettingsFilePath = "./.git/github.json"
	if (-not (Test-Path $GitHubSettingsFilePath -PathType Leaf)) {
		throw "GitHub settings not found."
	}

	$RepositoryUri = Get-Content $GitHubSettingsFilePath | ConvertFrom-Json | Select-Object -ExpandProperty repositoryUri

	Start-Process $RepositoryUri
}
New-Alias oghr "Open-GitHubRepository"