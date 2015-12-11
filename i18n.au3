#cs
	i18n UDF
	Made by Jefrey S. Santos
#ce

Global $_i18n_LangBase = @ScriptDir,$_i18n_Default = 'en-US',$_i18n_GlobalFile = False

Func _i18n_GetLocale()
	Local $aRet = DllCall("Kernel32.dll", "int", "LCIDToLocaleName", "int", "0x" & @OSLang, "wstr", "", "int", 85, "dword", 0)
	Return $aRet[2]
EndFunc   ;==>LCIDToLocaleName

Func _i18n_GetLocale2()
	Return StringSplit(_i18n_GetLocale(), "-")[1]
EndFunc

Func _i18n_SetLangBase($sFolder)
	$_i18n_LangBase = $sFolder
EndFunc

Func _i18n_SetDefault($sDefault)
	$_i18n_Default = $sDefault
EndFunc

Func _i18n_SetGlobalFile($sGlobalFile) ; if only one file holds all the languages
	$_i18n_GlobalFile = $sGlobalFile
EndFunc

Func _($sText, $sPar1=Default, $sPar2=Default, $sPar3=Default, $sPar4=Default, $sPar5=Default, $sPar6=Default, $sPar7=Default, $sPar8=Default, $sPar9=Default, $sPar10=Default, $sPar11=Default, $sPar12=Default, $sPar13=Default, $sPar14=Default, $sPar15=Default, $sPar16=Default, $sPar17=Default, $sPar18=Default, $sPar19=Default, $sPar20=Default, $sPar21=Default, $sPar22=Default, $sPar23=Default, $sPar24=Default, $sPar25=Default, $sPar26=Default, $sPar27=Default, $sPar28=Default, $sPar29=Default, $sPar30=Default, $sPar31=Default, $sPar32=Default)

	$sControl = IniRead(__i18n_GetTranslationFile(), _i18n_GetLocale(), $sText, "I18N ERROR NO TRANSLATION") ; 4 chars lang code
	If $sControl = "I18N ERROR NO TRANSLATION" Then $sControl = IniRead(__i18n_GetTranslationFile(), _i18n_GetLocale2(), $sText, "I18N ERROR NO TRANSLATION") ; 2 chars lang code
	If $sControl = "I18N ERROR NO TRANSLATION" Then $sControl = IniRead(__i18n_GetTranslationFile(), $_i18n_Default, $sText, $sText) ; fallback lang

	If @NumParams = 1 Then
		$sReturn = $sControl
	ElseIf @NumParams = 2 Then
		$sReturn = StringFormat($sControl, $sPar1)
	ElseIf @NumParams = 3 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2)
	ElseIf @NumParams = 4 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3)
	ElseIf @NumParams = 5 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4)
	ElseIf @NumParams = 6 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5)
	ElseIf @NumParams = 7 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6)
	ElseIf @NumParams = 8 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7)
	ElseIf @NumParams = 9 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8)
	ElseIf @NumParams = 10 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9)
	ElseIf @NumParams = 11 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10)
	ElseIf @NumParams = 12 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11)
	ElseIf @NumParams = 13 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12)
	ElseIf @NumParams = 14 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13)
	ElseIf @NumParams = 15 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14)
	ElseIf @NumParams = 16 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15)
	ElseIf @NumParams = 17 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16)
	ElseIf @NumParams = 18 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17)
	ElseIf @NumParams = 19 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18)
	ElseIf @NumParams = 20 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19)
	ElseIf @NumParams = 21 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20)
	ElseIf @NumParams = 22 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21)
	ElseIf @NumParams = 23 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22)
	ElseIf @NumParams = 24 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23)
	ElseIf @NumParams = 25 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24)
	ElseIf @NumParams = 26 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24, $sPar25)
	ElseIf @NumParams = 27 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24, $sPar25, $sPar26)
	ElseIf @NumParams = 28 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24, $sPar25, $sPar26, $sPar27)
	ElseIf @NumParams = 29 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24, $sPar25, $sPar26, $sPar27, $sPar28)
	ElseIf @NumParams = 30 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24, $sPar25, $sPar26, $sPar27, $sPar28, $sPar29)
	ElseIf @NumParams = 31 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24, $sPar25, $sPar26, $sPar27, $sPar28, $sPar29, $sPar30)
	ElseIf @NumParams = 32 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24, $sPar25, $sPar26, $sPar27, $sPar28, $sPar29, $sPar30, $sPar31)
	ElseIf @NumParams = 33 Then
		$sReturn = StringFormat($sControl, $sPar1, $sPar2, $sPar3, $sPar4, $sPar5, $sPar6, $sPar7, $sPar8, $sPar9, $sPar10, $sPar11, $sPar12, $sPar13, $sPar14, $sPar15, $sPar16, $sPar17, $sPar18, $sPar19, $sPar20, $sPar21, $sPar22, $sPar23, $sPar24, $sPar25, $sPar26, $sPar27, $sPar28, $sPar29, $sPar30, $sPar31, $sPar32)
	EndIf

	Return StringReplace($sReturn, "\n", @CRLF)
EndFunc

Func __i18n_GetTranslationFile()
	If $_i18n_GlobalFile Then
		Return $_i18n_GlobalFile
	Else
		$locale = _i18n_GetLocale()
		$locale_2 = _i18n_GetLocale2()
		If FileExists($_i18n_LangBase & "\" & $locale & ".lng") Then
			Return $_i18n_LangBase & "\" & $locale & ".lng"
		ElseIf FileExists($_i18n_LangBase & "\" & $locale_2 & ".lng") Then
			Return $_i18n_LangBase & "\" & $locale_2 & ".lng"
		Else
			Return $_i18n_LangBase & "\" & $_i18n_Default & ".lng"
		EndIf
	EndIf
EndFunc
