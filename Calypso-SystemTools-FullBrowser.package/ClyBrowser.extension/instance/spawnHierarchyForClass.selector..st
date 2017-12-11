*Calypso-SystemTools-FullBrowser
spawnHierarchyForClass: aClass selector: aSymbolOrNil
	"For compatibility with SystemNavigation 
	we should ensure current image environment if it is absent".
	navigationEnvironment ifNil: [ navigationEnvironment := ClyNavigationEnvironment currentImage ].
	self spawnBrowser: ClyFullBrowser withState: [ :browser | 
		browser selectClass: aClass.
		browser switchToFullClassHierarchy.
		aSymbolOrNil ifNotNil: [ 
			browser selectMethod: aClass >> aSymbolOrNil ]
	]