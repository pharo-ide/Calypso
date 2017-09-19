printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem getProperty: ClyMethodDefinitionProperty.
	
	^definition definitionPackageItem name, ' / ', definition printDefinition 