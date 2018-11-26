 FormatTime, NewDirName, ,yyyyMMdd
 ;NewDirName := %NewDirName%
; 自定义新建的文件夹或文件名称, 可以用变量, 例如日期或剪贴板中的内容

;字符串
::tt:: tititi@163.com

;专业软件 Ctrl+Alt+字母
^!c:: Run "C:\ti\ccsv7\eclipse\ccstudio.exe"
^!m:: Run "C:\Program Files (x86)\Matlab_R2009A\bin\matlab.exe"
^!x:: Run "C:\Program Files (x86)\Altium\AD16\DXP.EXE"
^!v:: Run "C:\Program Files\Microsoft VS Code\Code.exe"
^!d:: Run "C:\Users\titit\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
^!n:: Run "C:\Program Files (x86)\Evernote\Evernote\Evernote.exe"

;常用软件 Ctrl+Alt+字母
^!q:: Run "C:\Program Files (x86)\Tencent\TIM\Bin\QQScLauncher.exe"
^!w:: Run "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"
^!j:: Run calc.exe
^!g:: Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
^!i:: Run iexplore.exe
^!e:: Run "C:\Program Files\Everything\Everything.exe"

;常用网址 Alt+字母
!g:: Run www.google.com
!b:: Run www.baidu.com
!h:: Run www.github.com
!k:: Run https://keep.google.com/u/0/#home
!m:: Run https://mail.google.com/mail/u/0/
!c:: Run https://calendar.google.com/calendar/r

;项目文件夹 Ctrl+Shift+字母
^+w:: Run C:\Users\titit\workspace_v7
^+f:: Run C:\1\FangCloudV2\CleanPower
^+d:: Run C:\Users\titit\Desktop

;新建文件夹 右边Alt+字母
>!f::
  WinGet, Process, ProcessName, A
  WinGetClass, class, A
  ; 活动窗口必须为桌面或资源管理器, 否则显示错误!
  If (Process != "explorer.exe")
  {
    MsgBox, Error!        ; 可自定义错误处理.
    Exit
  }
  If (class ~= "rogman|WorkerW")
  {
    ObjDir := A_Desktop
  }
  Else If (class ~= "(Cabinet|Explore)WClass")
  {
    for window in ComObjCreate("Shell.Application").Windows    ; 可以考虑从地址栏获取当前路径
      If (window.hwnd = WinExist("A"))
        ObjDir := window.LocationURL
    StringReplace, ObjDir, ObjDir, file:///
    While, FoundPos := RegExMatch(ObjDir, "i)(?<=%)[\da-f]{1,2}", hex)        ; 在路径中含特殊符号时还原这些符号
          StringReplace, ObjDir, ObjDir, `%%hex%, % Chr("0x" . hex), All
  }
  FileCreateDir, %ObjDir%\%NewDirName%
Return

;新建word文档 右边Alt+字母
>!w::
  WinGet, Process, ProcessName, A
  WinGetClass, class, A
  ; 活动窗口必须为桌面或资源管理器, 否则显示错误!
  If (Process != "explorer.exe")
  {
    MsgBox, Error!        ; 可自定义错误处理.
    Exit
  }
  If (class ~= "rogman|WorkerW")
  {
    ObjDir := A_Desktop
  }
  Else If (class ~= "(Cabinet|Explore)WClass")
  {
    for window in ComObjCreate("Shell.Application").Windows    ; 可以考虑从地址栏获取当前路径
      If (window.hwnd = WinExist("A"))
        ObjDir := window.LocationURL
    StringReplace, ObjDir, ObjDir, file:///
    While, FoundPos := RegExMatch(ObjDir, "i)(?<=%)[\da-f]{1,2}", hex)        ; 在路径中含特殊符号时还原这些符号
          StringReplace, ObjDir, ObjDir, `%%hex%, % Chr("0x" . hex), All
  }
  FileCopy, C:\Users\titit\Desktop\App\1 AHK常用程序启动脚本\新建空白文件\空白word文档.docx, %ObjDir%\%NewDirName%.docx
Return


;新建excel文档 右边Alt+字母
>!e::
  WinGet, Process, ProcessName, A
  WinGetClass, class, A
  ; 活动窗口必须为桌面或资源管理器, 否则显示错误!
  If (Process != "explorer.exe")
  {
    MsgBox, Error!        ; 可自定义错误处理.
    Exit
  }
  If (class ~= "rogman|WorkerW")
  {
    ObjDir := A_Desktop
  }
  Else If (class ~= "(Cabinet|Explore)WClass")
  {
    for window in ComObjCreate("Shell.Application").Windows    ; 可以考虑从地址栏获取当前路径
      If (window.hwnd = WinExist("A"))
        ObjDir := window.LocationURL
    StringReplace, ObjDir, ObjDir, file:///
    While, FoundPos := RegExMatch(ObjDir, "i)(?<=%)[\da-f]{1,2}", hex)        ; 在路径中含特殊符号时还原这些符号
          StringReplace, ObjDir, ObjDir, `%%hex%, % Chr("0x" . hex), All
  }
  FileCopy, C:\Users\titit\Desktop\App\1 AHK常用程序启动脚本\新建空白文件\空白excel文档.xlsx, %ObjDir%\%NewDirName%.xlsx
Return

;新建visio文档 右边Alt+字母
>!v::
  WinGet, Process, ProcessName, A
  WinGetClass, class, A
  ; 活动窗口必须为桌面或资源管理器, 否则显示错误!
  If (Process != "explorer.exe")
  {
    MsgBox, Error!        ; 可自定义错误处理.
    Exit
  }
  If (class ~= "rogman|WorkerW")
  {
    ObjDir := A_Desktop
  }
  Else If (class ~= "(Cabinet|Explore)WClass")
  {
    for window in ComObjCreate("Shell.Application").Windows    ; 可以考虑从地址栏获取当前路径
      If (window.hwnd = WinExist("A"))
        ObjDir := window.LocationURL
    StringReplace, ObjDir, ObjDir, file:///
    While, FoundPos := RegExMatch(ObjDir, "i)(?<=%)[\da-f]{1,2}", hex)        ; 在路径中含特殊符号时还原这些符号
          StringReplace, ObjDir, ObjDir, `%%hex%, % Chr("0x" . hex), All
  }
  FileCopy, C:\Users\titit\Desktop\App\1 AHK常用程序启动脚本\新建空白文件\空白visio文档.vsdx, %ObjDir%\%NewDirName%.vsdx
Return


;新建文本文档 右边Alt+字母
>!t::
  WinGet, Process, ProcessName, A
  WinGetClass, class, A
  ; 活动窗口必须为桌面或资源管理器, 否则显示错误!
  If (Process != "explorer.exe")
  {
    MsgBox, Error!        ; 可自定义错误处理.
    Exit
  }
  If (class ~= "rogman|WorkerW")
  {
    ObjDir := A_Desktop
  }
  Else If (class ~= "(Cabinet|Explore)WClass")
  {
    for window in ComObjCreate("Shell.Application").Windows    ; 可以考虑从地址栏获取当前路径
      If (window.hwnd = WinExist("A"))
        ObjDir := window.LocationURL
    StringReplace, ObjDir, ObjDir, file:///
    While, FoundPos := RegExMatch(ObjDir, "i)(?<=%)[\da-f]{1,2}", hex)        ; 在路径中含特殊符号时还原这些符号
          StringReplace, ObjDir, ObjDir, `%%hex%, % Chr("0x" . hex), All
  }
  FileCopy, C:\Users\titit\Desktop\App\1 AHK常用程序启动脚本\新建空白文件\空白文本文档.txt, %ObjDir%\%NewDirName%.txt
Return


;新建头文件 右边Alt+字母
>!h::
  WinGet, Process, ProcessName, A
  WinGetClass, class, A
  ; 活动窗口必须为桌面或资源管理器, 否则显示错误!
  If (Process != "explorer.exe")
  {
    MsgBox, Error!        ; 可自定义错误处理.
    Exit
  }
  If (class ~= "rogman|WorkerW")
  {
    ObjDir := A_Desktop
  }
  Else If (class ~= "(Cabinet|Explore)WClass")
  {
    for window in ComObjCreate("Shell.Application").Windows    ; 可以考虑从地址栏获取当前路径
      If (window.hwnd = WinExist("A"))
        ObjDir := window.LocationURL
    StringReplace, ObjDir, ObjDir, file:///
    While, FoundPos := RegExMatch(ObjDir, "i)(?<=%)[\da-f]{1,2}", hex)        ; 在路径中含特殊符号时还原这些符号
          StringReplace, ObjDir, ObjDir, `%%hex%, % Chr("0x" . hex), All
  }
  FileCopy, C:\Users\titit\Desktop\App\1 AHK常用程序启动脚本\新建空白文件\空白头文件.h, %ObjDir%\%NewDirName%.h
Return


;新建源文件 右边Alt+字母
>!c::
  WinGet, Process, ProcessName, A
  WinGetClass, class, A
  ; 活动窗口必须为桌面或资源管理器, 否则显示错误!
  If (Process != "explorer.exe")
  {
    MsgBox, Error!        ; 可自定义错误处理.
    Exit
  }
  If (class ~= "rogman|WorkerW")
  {
    ObjDir := A_Desktop
  }
  Else If (class ~= "(Cabinet|Explore)WClass")
  {
    for window in ComObjCreate("Shell.Application").Windows    ; 可以考虑从地址栏获取当前路径
      If (window.hwnd = WinExist("A"))
        ObjDir := window.LocationURL
    StringReplace, ObjDir, ObjDir, file:///
    While, FoundPos := RegExMatch(ObjDir, "i)(?<=%)[\da-f]{1,2}", hex)        ; 在路径中含特殊符号时还原这些符号
          StringReplace, ObjDir, ObjDir, `%%hex%, % Chr("0x" . hex), All
  }
  FileCopy, C:\Users\titit\Desktop\App\1 AHK常用程序启动脚本\新建空白文件\空白源文件.c, %ObjDir%\%NewDirName%.c
Return


;=====================================================================o
;                   Feng Ruohang's AHK Script                         |
;                      CapsLock Enhancement                           |
;---------------------------------------------------------------------o
;Description:                                                         |
;    This Script is wrote by Feng Ruohang via AutoHotKey Script. It   |
; Provieds an enhancement towards the "Useless Key" CapsLock, and     |
; turns CapsLock into an useful function Key just like Ctrl and Alt   |
; by combining CapsLock with almost all other keys in the keyboard.   |
;                                                                     |
;Summary:                                                             |
;o----------------------o---------------------------------------------o
;|CapsLock;             | {ESC}  Especially Convient for vim user     |
;|CaspLock + `          | {CapsLock}CapsLock Switcher as a Substituent|
;|CapsLock + hjklwb     | Vim-Style Cursor Mover                      |
;|CaspLock + uiop       | Convient Home/End PageUp/PageDn             |
;|CaspLock + nm,.       | Convient Delete Controller                  |
;|CapsLock + zxcvay     | Windows-Style Editor                        |
;|CapsLock + Direction  | Mouse Move                                  |
;|CapsLock + Enter      | Mouse Click                                 |
;|CaspLock + {F1}~{F6}  | Media Volume Controller                     |
;|CapsLock + qs         | Windows & Tags Control                      |
;|CapsLock + ;'[]       | Convient Key Mapping                        |
;|CaspLock + dfert      | Frequently Used Programs (Self Defined)     |
;|CaspLock + 123456     | Dev-Hotkey for Visual Studio (Self Defined) |
;|CapsLock + 67890-=    | Shifter as Shift                            |
;-----------------------o---------------------------------------------o
;|Use it whatever and wherever you like. Hope it help                 |
;=====================================================================o


;=====================================================================o
;                       CapsLock Initializer                         ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff                                          ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                       CapsLock Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                    CapsLock + ` | {CapsLock}                       ;|
;---------------------------------o-----------------------------------o
CapsLock & `::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                         CapsLock Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
CapsLock::Send, {ESC}                                                ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + j |  Down                          ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + l |  Right                         ;|
;                      Ctrl, Alt Compatible   原来！都为+，已修改    ;|
;-----------------------------------o---------------------------------o
CapsLock & h::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Left}                                                 ;|
    else                                                             ;|
        Send, !{Left}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Left}                                                ;|
    else                                                             ;|
        Send, !^{Left}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & j::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Down}                                                 ;|
    else                                                             ;|
        Send, !{Down}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Down}                                                ;|
    else                                                             ;|
        Send, !^{Down}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & k::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Up}                                                   ;|
    else                                                             ;|
        Send, !{Up}                                                  ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Up}                                                  ;|
    else                                                             ;|
        Send, !^{Up}                                                 ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & l::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Right}                                                ;|
    else                                                             ;|
        Send, !{Right}                                               ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Right}                                               ;|
    else                                                             ;|
        Send, !^{Right}                                              ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + i |  Home                          ;|
;                      CapsLock + o |  End                           ;|
;                      Ctrl, Alt Compatible   原来！都为+，已修改    ;|
;-----------------------------------o---------------------------------o
CapsLock & i::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Home}                                                 ;|
    else                                                             ;|
        Send, !{Home}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Home}                                                ;|
    else                                                             ;|
        Send, !^{Home}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & o::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {End}                                                  ;|
    else                                                             ;|
        Send, !{End}                                                 ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{End}                                                 ;|
    else                                                             ;|
        Send, !^{End}                                                ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                      CapsLock Page Navigator                       ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + u |  PageUp                        ;|
;                      CapsLock + p |  PageDown                      ;|
;                      Ctrl, Alt Compatible   原来！都为+，已修改    ;|
;-----------------------------------o---------------------------------o
CapsLock & u::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgUp}                                                 ;|
    else                                                             ;|
        Send, !{PgUp}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgUp}                                                ;|
    else                                                             ;|
        Send, !^{PgUp}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & p::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgDn}                                                 ;|
    else                                                             ;|
        Send, !{PgDn}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgDn}                                                ;|
    else                                                             ;|
        Send, !^{PgDn}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                     CapsLock Mouse Controller                      ;|
;-----------------------------------o---------------------------------o
;                   CapsLock + Up   |  Mouse Up                      ;|
;                   CapsLock + Down |  Mouse Down                    ;|
;                   CapsLock + Left |  Mouse Left                    ;|
;                  CapsLock + Right |  Mouse Right                   ;|
;    CapsLock + Enter(Push Release) |  Mouse Left Push(Release)      ;|
;-----------------------------------o---------------------------------o
CapsLock & Up::    MouseMove, 0, -10, 0, R                           ;|
CapsLock & Down::  MouseMove, 0, 10, 0, R                            ;|
CapsLock & Left::  MouseMove, -10, 0, 0, R                           ;|
CapsLock & Right:: MouseMove, 10, 0, 0, R                            ;|
;-----------------------------------o                                ;|
CapsLock & Enter::                                                   ;|
SendEvent {Blind}{LButton down}                                      ;|
KeyWait Enter                                                        ;|
SendEvent {Blind}{LButton up}                                        ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                           CapsLock Deletor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + n  |  Ctrl + Delete (Delete a Word) ;|
;                     CapsLock + m  |  Delete                        ;|
;                     CapsLock + ,  |  BackSpace                     ;|
;                     CapsLock + .  |  Ctrl + BackSpace              ;|
;-----------------------------------o---------------------------------o
;CapsLock & ,:: Send, {Del}                                           ;|
;CapsLock & .:: Send, ^{Del}                                          ;|
;CapsLock & m:: Send, {BS}                                            ;|
;CapsLock & n:: Send, ^{BS}                                           ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                            CapsLock Editor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + z  |  Ctrl + z (Cancel)             ;|
;                     CapsLock + x  |  Ctrl + x (Cut)                ;|
;                     CapsLock + c  |  Ctrl + c (Copy)               ;|
;                     CapsLock + v  |  Ctrl + z (Paste)              ;|
;                     CapsLock + a  |  Ctrl + a (Select All)         ;|
;                     CapsLock + y  |  Ctrl + z (Yeild)              ;|
;                     CapsLock + w  |  Ctrl + Right(Move as [vim: w]);|
;                     CapsLock + b  |  Ctrl + Left (Move as [vim: b]);|
;-----------------------------------o---------------------------------o
CapsLock & z:: Send, ^z                                              ;|
CapsLock & x:: Send, ^x                                              ;|
CapsLock & c:: Send, ^c                                              ;|
CapsLock & v:: Send, ^v                                              ;|
;CapsLock & a:: Send, ^a                                              ;|
CapsLock & y:: Send, ^y                                              ;|
CapsLock & w:: Send, ^{Right}                                        ;|
;CapsLock & b:: Send, ^{Left}                                         ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                       CapsLock Media Controller                    ;|
;-----------------------------------o---------------------------------o
;                    CapsLock + F1  |  Volume_Mute                   ;|
;                    CapsLock + F2  |  Volume_Down                   ;|
;                    CapsLock + F3  |  Volume_Up                     ;|
;                    CapsLock + F3  |  Media_Play_Pause              ;|
;                    CapsLock + F5  |  Media_Next                    ;|
;                    CapsLock + F6  |  Media_Stop                    ;|
;-----------------------------------o---------------------------------o
CapsLock & F1:: Send, {Volume_Mute}                                  ;|
CapsLock & F2:: Send, {Volume_Down}                                  ;|
CapsLock & F3:: Send, {Volume_Up}                                    ;|
CapsLock & F4:: Send, {Media_Play_Pause}                             ;|
CapsLock & F5:: Send, {Media_Next}                                   ;|
CapsLock & F6:: Send, {Media_Stop}                                   ;|
;---------------------------------------------------------------------o


/*  注释一定要分开成这种形式，如果是一行下面的语句会被屏蔽掉
***********
WinGet, outputvar ,MinMax中参数outputvar的含义:
-1：窗口处于最小化状态（ WinRestore 可以还原它）。
1：窗口处于最大化状态（ WinRestore 可以还原它）。
0：窗口既不处于最大化也不处于最小化状态。
***********
*/


;=====================================================================o
;                      CapsLock Window Controller                    ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + a  |             (Maximum Windows)  ;|
;                     CapsLock + s  |             (Minimum Windows)  ;|
;                     CapsLock + q  |  Alt + F4   (Close Windows)    ;|
;                     CapsLock + g  |  AppsKey    (Menu Key)         ;|
;   (Disabled)  Alt + CapsLock + s  |  AltTab     (Switch Windows)   ;|
;   (Disabled)  Alt + CapsLock + q  |  Ctrl + w   (Close Windows)    ;|
;-----------------------------------o---------------------------------o
CapsLock & a::                                                         ;| 
WinGet,S,MinMax,A                                                     ;|
if S=1                                                                  ;|
    WinRestore,A                                                     ;|
else                                                                  ;|
    WinMaximize,A                                                     ;|
return                                                                  ;|
;-----------------------------------o                                  ;| 
CapsLock & s::                                                         ;|
WinGet,S,MinMax,A                                                     ;|
WinMinimize,A                                                         ;|
return                                                                  ;|
;-----------------------------------o                                ;|
CapsLock & q::Send, !{F4}                                            ;|                                                             ;|
;-----------------------------------o                                ;|
CapsLock & g:: Send, {AppsKey}                                       ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                        CapsLock Self Defined Area                  ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + d  |  Alt + d(Dictionary)           ;|
;                     CapsLock + f  |  Alt + f(Search via Everything);|
;                     CapsLock + e  |  Open Search Engine            ;|
;                     CapsLock + r  |  Open Shell                    ;|
;                     CapsLock + t  |  Open Text Editor              ;|
;-----------------------------------o---------------------------------o
CapsLock & d:: Send, {Del}                                           ;|
CapsLock & e:: Send, {Enter}                                         ;|
CapsLock & b:: Send, {BS}                                         ;|
;CapsLock & f:: Send, !f                                             ;|
;windows+B快捷键将焦点定位到任务栏的小三角，然后在点击enter打开
CapsLock & f:: Send, #b{Enter}

;CapsLock & e:: Run http://cn.bing.com/                              ;|
;CapsLock & r:: Run Powershell                                       ;|
;CapsLock & t:: Run C:\Program Files (x86)\Notepad++\notepad++.exe   ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                        CapsLock Char Mapping                       ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + ;  |  Enter (Cancel)                ;|
;                     CapsLock + '  |  =                             ;|
;                     CapsLock + [  |  Back         (Visual Studio)  ;|
;                     CapsLock + ]  |  Goto Define  (Visual Studio)  ;|
;                     CapsLock + /  |  Comment      (Visual Studio)  ;|
;                     CapsLock + \  |  Uncomment    (Visual Studio)  ;|
;                     CapsLock + 1  |  Build and Run(Visual Studio)  ;|
;                     CapsLock + 2  |  Debuging     (Visual Studio)  ;|
;                     CapsLock + 3  |  Step Over    (Visual Studio)  ;|
;                     CapsLock + 4  |  Step In      (Visual Studio)  ;|
;                     CapsLock + 5  |  Stop Debuging(Visual Studio)  ;|
;                     CapsLock + 6  |  Shift + 6     ^               ;|
;                     CapsLock + 7  |  Shift + 7     &               ;|
;                     CapsLock + 8  |  Shift + 8     *               ;|
;                     CapsLock + 9  |  Shift + 9     (               ;|
;                     CapsLock + 0  |  Shift + 0     )               ;|
;-----------------------------------o---------------------------------o
CapsLock & `;:: Send, {Enter}                                        ;|
CapsLock & ':: Send, =                                               ;|
CapsLock & [:: Send, ^-                                              ;|
CapsLock & ]:: Send, {F12}                                           ;|
;-----------------------------------o                                ;|
CapsLock & /::                                                       ;|
Send, ^e                                                             ;|
Send, c                                                              ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & \::                                                       ;|
Send, ^e                                                             ;|
Send, u                                                              ;|
return                                                               ;|
;-----------------------------------o                                ;|
;CapsLock & 1:: Send,^{F5}                                            ;|
;CapsLock & 2:: Send,{F5}                                             ;|
;CapsLock & 3:: Send,{F10}                                            ;|
;CapsLock & 4:: Send,{F11}                                            ;|
;将 CapsLock+1 定义为 windows+shift+左方向键，将窗口移动到左侧显示器 ;|
CapsLock & 1:: Send, #+{Left}                                        ;|

;将 CapsLock+2 定义为 windows+shift+右方向键，将窗口移动到右侧显示器 ;|
CapsLock & 2:: Send, #+{Right}                                       ;|

;将 CapsLock+3 定义为 windows+左方向键，将窗口定为到屏幕左半边       ;|
CapsLock & 3:: Send, #{Left}                                         ;|

;将 CapsLock+4 定义为 windows+右方向键，将窗口定为到屏幕右半边       ;|
CapsLock & 4:: Send, #{Right}                                        ;|

CapsLock & 5:: Send,+{F5}                                            ;|
;-----------------------------------o                                ;|
CapsLock & 6:: Send,+6                                               ;|
CapsLock & 7:: Send,+7                                               ;|
CapsLock & 8:: Send,+8                                               ;|
CapsLock & 9:: Send,+9                                               ;|
CapsLock & 0:: Send,+0                                               ;|
;---------------------------------------------------------------------o










