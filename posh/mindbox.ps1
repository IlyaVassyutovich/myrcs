$_mr = $env:mr

if ($_mr)
{
	$mindbox = @{
		root      = $_mr;
		product   = Join-Path $_mr "DirectCrm";
		frontend  = Join-Path $_mr "frontend";
		uikit     = Join-Path $_mr "ui-kit";
		messaging = Join-Path $_mr "Messaging";
		wpg       = Join-Path $_mr "WebPushGate";
		ph        = Join-Path $_mr "PushHub";
	}
}