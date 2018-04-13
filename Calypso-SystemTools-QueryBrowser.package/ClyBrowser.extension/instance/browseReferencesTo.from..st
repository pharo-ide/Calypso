*Calypso-SystemTools-QueryBrowser
browseReferencesTo: aSymbol from: anEnvironment
	
	| classBinding |
	aSymbol first isUppercase ifTrue: [ 
		classBinding := anEnvironment bindingOf: aSymbol.
		classBinding ifNotNil: [ 
			^self spawnQueryBrowserOn: (ClyClassReferences of: classBinding)]].
		
	self browseSendersOf: aSymbol