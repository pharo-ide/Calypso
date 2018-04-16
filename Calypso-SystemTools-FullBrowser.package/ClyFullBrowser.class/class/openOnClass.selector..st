opening
openOnClass: aClass selector: aSymbol

	^(aClass lookupSelector: aSymbol)
		ifNil: [ self openOnClass: aClass ]
		ifNotNil: [:method | self openOnMethod: method]