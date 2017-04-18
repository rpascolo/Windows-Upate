#pragma compile(ProductName,WUMT Wrapper Script)
#pragma compile(ProductVersion,2.1.3)
AutoItSetOption ("MustDeclareVars",1)
#pragma compile(x64,false)
#pragma compile(Icon,wumt.ico)
#RequireAdmin
#include <Constants.au3>
Local $WUMT_Name="wumt_" & StringLower(@OSArch) & ".exe" ; wumt_x86.exe or wumt_x64.exe depending on OS architecture
Local $WUMT_Dir=@ScriptDir
Local Const $WUMT_Arguments='-update "-onclose sc stop wuauserv" "-onclose sc config wuauserv start= disabled"'
#include <readme.au3>
#include <WinUpdatesInstall.au3>
;
;	Normal processing path
;
If MsgBox($MB_OKCANCEL,"WUMT Wrapper Script","***********************************************"  & @CRLF & _
	"Welcome to manual updates! You are about to run"  & @CRLF & "the Windows Update MiniTool (WUMT)." & @CRLF & _
	"***********************************************") == $IDCANCEL Then 
	Exit
EndIf	
ShellExecuteWait("sc.exe","config wuauserv start= auto","","",@SW_HIDE)
ShellExecuteWait("sc.exe","start wuauserv","","",@SW_HIDE)
ShellExecute("" & $WUMT_Dir & "\" & $WUMT_Name & "",$WUMT_Arguments,"","",@SW_MAXIMIZE) 
