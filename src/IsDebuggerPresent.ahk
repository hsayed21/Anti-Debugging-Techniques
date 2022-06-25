; -----------------------------------------------------------------------------------------------
; Function......: IsDebuggerPresent
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; Author........: Hamada Sayed(x00h)[https://github.com/hsayed21]
; Links.........: https://docs.microsoft.com/en-us/windows/win32/api/debugapi/nf-debugapi-isdebuggerpresent
; -----------------------------------------------------------------------------------------------

#SingleInstance, force

flag := DllCall("Kernel32.dll\IsDebuggerPresent")
If (flag)
{
  MsgBox, IsDebuggerPresent
}
Else
{
  MsgBox, No Debugger
}
ExitApp


/* [C++]
-----------------------------------------------------------------------------------------------
  BOOL IsDebuggerPresent();
-----------------------------------------------------------------------------------------------
*/
