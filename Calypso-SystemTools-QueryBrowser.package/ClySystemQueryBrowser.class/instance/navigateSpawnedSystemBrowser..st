navigation
navigateSpawnedSystemBrowser: aSystemBrowser

	| lastItem definition |
	lastItem := self selection lastSelectedItem.
	definition := lastItem getProperty: ClyDefinitionProperty.
	
	aSystemBrowser selectPackage: definition definitionPackage.
	aSystemBrowser selectClass: definition definitionClass.
	
	(definition isKindOf: ClyMethodDefinitionProperty) ifTrue: [ 
		aSystemBrowser selectMethod: lastItem actualObject].