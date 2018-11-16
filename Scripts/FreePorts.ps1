Set-ExecutionPolicy Bypass -Scope Process;netstat -an | Select-String -Pattern "LISTENING|State"
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');