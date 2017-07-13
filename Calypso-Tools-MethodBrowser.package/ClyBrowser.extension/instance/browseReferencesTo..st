*Calypso-Tools-MethodBrowser
browseReferencesTo: aSymbol
	
	| classBinding |
	aSymbol first isUppercase ifTrue: [ 
		classBinding := self systemEnvironment bindingOf: aSymbol.
		classBinding ifNotNil: [ 
			^self browseMethodsFromQuery: (ClyClassReferences of: {classBinding})]].
		
	self browseSendersOf: aSymbol