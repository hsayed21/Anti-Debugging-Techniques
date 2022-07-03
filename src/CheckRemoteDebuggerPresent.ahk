; -----------------------------------------------------------------------------------------------
; Function......: CheckRemoteDebuggerPresent
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; Author........: Hamada Sayed(x00h)[https://github.com/hsayed21]
; Links.........: https://docs.microsoft.com/en-us/windows/win32/api/debugapi/nf-debugapi-checkremotedebuggerpresent
; -----------------------------------------------------------------------------------------------

#SingleInstance, force

hProcess := DllCall("GetCurrentProcess", "Ptr")
pbDebuggerPresent := False
ret := DllCall("CheckRemoteDebuggerPresent"
              , "Ptr", hProcess
              , "Int*", pbDebuggerPresent)
If (ret)
{
  If (pbDebuggerPresent)
  {
    MsgBox, Detect Debugger, now will exit :)
    ExitApp
  }
  Else{
    MsgBox, No Debugger
  }
}
ExitApp


/* [C++]
-----------------------------------------------------------------------------------------------
  BOOL CheckRemoteDebuggerPresent(
    [in]      HANDLE hProcess,
    [in, out] PBOOL  pbDebuggerPresent
  );
-----------------------------------------------------------------------------------------------
*/
