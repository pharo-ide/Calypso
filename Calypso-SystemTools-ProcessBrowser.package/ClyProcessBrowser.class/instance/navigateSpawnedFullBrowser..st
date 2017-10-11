navigation
navigateSpawnedFullBrowser: aFullBrowser
	| context |
	context := stackView createSelectionContext.
	
	context isMethodSelected ifTrue: [ 
		aFullBrowser selectMethod: context lastSelectedMethod]