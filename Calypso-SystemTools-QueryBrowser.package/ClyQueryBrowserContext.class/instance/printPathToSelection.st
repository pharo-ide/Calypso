printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem getProperty: ClySystemDefinitionProperty.
	
	^definition definitionPackageItem name, ' / ', definition printDefinition