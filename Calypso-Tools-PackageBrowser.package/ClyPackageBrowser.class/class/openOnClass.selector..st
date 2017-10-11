opening
openOnClass: aClass selector: aSymbol

	| method |
	method := aClass lookupSelector: aSymbol.
	^self openOnMethod: method