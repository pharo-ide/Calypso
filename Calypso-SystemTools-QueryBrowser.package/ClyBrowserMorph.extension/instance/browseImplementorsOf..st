*Calypso-SystemTools-QueryBrowser
browseImplementorsOf: aSymbol
	| classBinding classToBrowse |
	aSymbol first isUppercase ifTrue: [ 
		classBinding := self system bindingOf: aSymbol.
		classBinding ifNotNil: [ 
			classToBrowse := classBinding value.
			classToBrowse isClassOrTrait ifFalse: [ classToBrowse := classToBrowse class ].
			^self spawnBrowser: ClyFullBrowser withState: [ :browser | 
				browser selectClass: classToBrowse]]].
	
	self spawnQueryBrowserOn: (ClyMessageImplementors of: aSymbol)