opening
openOnClass: aClass selector: aSymbol highlight: aString

	| browser |
	browser := self openOnClass: aClass selector: aSymbol.
	browser withTool: ClyMethodCodeEditorTool do: [ :editor | 
		editor selectAnyString: { aString }].
	^browser