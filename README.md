# i18n AU3
Transliteration library for AutoIt

How to use
----------

When translating, you have two options: the first one is to use a global file on the following format:

```
[language_code]
text_id=Translation
text_with_format=Number: %.2f
text_with_parameter=Hi %s

[another_language_code]
text_id=Tradução
...
```

The second option is to separate every translation into files named `language_code.lng` in a folder of your choice. Note that every file on this folder will have the following format:

```
[language_code]
text_id=Translation
text_with_format=Number: %.2f
text_with_parameter=Hi %s
```

The language code can be ISO 639-1 (2 chars, like "en", "pt", "es") or culture code (including the country, like "en-US", "pt-BR", "es-ES"). You can use both these formats on the same file/project without any problem.

Finally, use the `_()` function to get your translation text. It accepts the following syntax:

```
_($sText_id [, $sPar1 [, $sParn ] ] )
```

The parameters are optional, but the maximum number of parameters is 32. If you need more than 32 parameters (sure?), please consider splitting your string into multiple ones.

Note that everything is explained on the example. See [Example.au3](Example.au3) and [Example.lng](Example.lng).
