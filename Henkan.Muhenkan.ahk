getLang() {  ;to check typing language!
  SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
  Return InputLocaleID
}

RCtrl::
  If getLang() == 0x4110411
    Send {vk1D} ;Muhenkan 

RAlt::
  If getLang() == 0x4110411
    Send {vk1C} ;Henkan 
