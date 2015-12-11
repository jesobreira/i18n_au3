#include 'i18n.au3'

; Getting user locale (with 4 and 2 chars)
MsgBox(0, "User locale", _i18n_GetLocale() & " (" & _i18n_GetLocale2() & ")")

; Only one file holds all our translations. So we do:
_i18n_SetGlobalFile('Example.lng')

; If, however, we had a folder with many .lng files,
; each one with a 4 or 2 chars locale name
; (en-us.lng, pt-br.lng, es.lng...),
; so, this is what we would do:
; _i18n_SetLangBase(@ScriptDir & "\languagesfolder")

; We must also set a fallback translation.
; A fallback translation is the translation that
; we will show if the user's computer's locale
; has no translation on our software.
; Default value is en-US
_i18n_SetDefault('en')

; Now let's play. All we will do is using the _() function.
; The _() function  receives, as first argument, the text
; (or text ID - which is what I recommend, this means using
; IDs like "main.messagebox.text" instead of full texts that
; are hard to write on MS INI files). Then we have 32 optional
; arguments that are the parameters, exactly like the [s]printf()
; (StringFormat()) function.
MsgBox(0, "Test", _('first_test'))

; Note that, as said above, we can use formats just like
; in the StringFormat() function. These formats are put on
; the translation file.

; Now let's play with the parameters.
MsgBox(0, "Test #2", _('second_test', @UserName))

; And now let's play with the formats.
MsgBox(0, "Test #3", _('third_test', 1.234567))

; That's all!

; Let's just open Example.lng on notepad,
; because it's pretty interesting now.

ShellExecute("notepad.exe", "Example.lng")
