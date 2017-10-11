navigation
navigateSpawnedFullBrowser: aFullBrowser

	| lastItem definition |
	lastItem := self selection lastSelectedItem.
	definition := lastItem getProperty: ClyDefinitionProperty.
	
	aFullBrowser selectPackage: definition definitionPackage.
	aFullBrowser selectClass: definition definitionClass.
	
	(definition isKindOf: ClyMethodDefinitionProperty) ifTrue: [ 
		aFullBrowser selectMethod: lastItem actualObject].