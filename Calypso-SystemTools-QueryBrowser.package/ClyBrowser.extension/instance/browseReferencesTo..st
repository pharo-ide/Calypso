*Calypso-SystemTools-QueryBrowser
browseReferencesTo: aSymbol
	
	| classBinding |
	aSymbol first isUppercase ifTrue: [ 
		classBinding := self system bindingOf: aSymbol.
		classBinding ifNotNil: [ 
			^self spawnQueryBrowserOn: (ClyClassReferences of: {classBinding})]].
		
	self browseSendersOf: aSymbol