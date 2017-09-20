printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem getProperty: ClyDefinitionProperty.
	
	^definition definitionPackageItem name, ' / ', definition printDefinition