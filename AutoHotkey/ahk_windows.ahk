;script for Autohotkey 1.1
;works with previous version of IME on Windows 11

;Commands with <alt>
; !h:: Send {Left} 
!j:: Send {Down}
!k:: Send {Up}
; !l:: Send {Right}
!y:: Send {Home}
!o:: Send {End}
!9:: Send {Delete}
!0:: Send {BackSpace}

; ;pasting current date with
; ^!\:: ;<ctrl>-<shift>-\
; FormatTime, time, A_now, yyMMdd 
; Send %time%
; return

; ;change to imeKorean
; +Space:: ;<shift>-<spacebar>
;   Goto, imeKorean 
;   return 
;
; ;change to imeEnglish
; !Space::
;   Goto, imeEnglish ;<alt>-<spacebar>
;   return 

imeKorean:
  if IME_CHECK("A")=0
    {
      Send, {VK15} ;change keyboard input language
      Sleep, 10
    }
    return 


imeEnglish: 
  if IME_CHECK("A")=1 
  {
    Send, {VK15} ;change keyboard input language
    Sleep, 10 
  }
  return 

; check keyboard input language whenever press `ESC` and if it's Korean, change it to English.
$Esc::
  if(IME_CHECK("A"))
      Send, {VK15}   ;if keyboard input is Korean, change it to English. 
  Send, {Escape}
  return

/*
  IME check("A")
  returns 0 when keyboard input is Korean,
  returns 1 when keyboard input is English.
*/
IME_CHECK(WinTitle) {
  WinGet,hWnd,ID,%WinTitle%
  Return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd),0x005,"")
}
Send_ImeControl(DefaultIMEWnd, wParam, lParam) {
  DetectSave := A_DetectHiddenWindows
  DetectHiddenWindows,ON
   SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd%
  if (DetectSave <> A_DetectHiddenWindows)
      DetectHiddenWindows,%DetectSave%
  return ErrorLevel
}
ImmGetDefaultIMEWnd(hWnd) {
  return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
}
