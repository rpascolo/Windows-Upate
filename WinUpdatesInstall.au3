IF Not FileExists(@ScriptDir & "\" & $WUMT_Name) Then
;
;	Installing the script. Search for WUMT folder and copy the script into folder
;
	Local $ProductVersion=FileGetVersion(@ScriptName,$FV_PRODUCTVERSION)
	Local $ProductName=FileGetVersion(@ScriptName,$FV_PRODUCTNAME)
	If MsgBox($MB_OKCANCEL,"Installation","Installing " & $ProductName & " version " & $ProductVersion & " in WUMT directory")  == $IDCANCEL Then
		MsgBox($MB_ICONINFORMATION,"Installation","Aborting installation...",5) 
		Exit ; abort installation
	EndIf
	Local $File_Search = FileOpenDialog("Searching " & $WUMT_Name,@HomeDrive,"(" & $WUMT_Name & ")",$FD_FILEMUSTEXIST,$WUMT_Name)
	If @error Then
		MsgBox($MB_ICONERROR,"File error","Searching " & $WUMT_Name & " failed. Aborting installation...",5)
		Exit
	EndIF	
	$WUMT_Dir=@WorkingDir
	FileCopy(@ScriptFullPath,$WUMT_Dir & "\" & @ScriptName, $FC_OVERWRITE) ; Copy the script into WUMT folder	
	FileCreateShortcut($WUMT_Dir & "\" & @ScriptName,@DesktopDir & "\Windows Update MiniTool.lnk") ; Create shortcut to the script on desktop
EndIf

