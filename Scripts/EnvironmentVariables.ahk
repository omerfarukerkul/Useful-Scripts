IfWinExist, C:\WINDOWS\SYSTEM32\cmd.exe
    WinKill
else
    return
^j::
Run, cmd.exe
WinActivate, C:\WINDOWS\SYSTEM32\cmd.exe
WinWaitActive, C:\WINDOWS\SYSTEM32\cmd.exe
SendInput runas {Text}/user:Administrator "rundll32 sysdm.cpl,EditEnvironmentVariables"
SendInput {Enter}
KeyWait Enter
SendInput {Enter}
WinWaitActive, Environment Variables
IfWinExist, C:\WINDOWS\SYSTEM32\cmd.exe
    WinKill
else
    return
