navigation
navigateSpawnedFullBrowser: aFullBrowser

	| lastItem definition |
	lastItem := self selection lastSelectedItem.
	definition := lastItem systemDefinition.
	
	aFullBrowser selectPackage: definition definingPackage.
	aFullBrowser selectClass: definition definingClass.
	
	(definition isKindOf: ClyMethodDefinitionProperty) ifTrue: [ 
		aFullBrowser selectMethod: lastItem actualObject].