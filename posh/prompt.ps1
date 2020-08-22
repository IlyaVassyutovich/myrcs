function Prompt {
	$TimeString = Get-Date -Format "HH:MM:ss"
	$CurrentLocation = $executionContext.SessionState.Path.CurrentLocation
	$RolePrompt = if (Test-IsAdmin) { "#" } else { "$" }
	return "[$TimeString] $CurrentLocation $($RolePrompt * ($nestedPromptLevel + 1)) ";
}
