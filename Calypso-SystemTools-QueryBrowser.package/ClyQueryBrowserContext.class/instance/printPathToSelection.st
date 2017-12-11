printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem getProperty: ClyItemDefinitionProperty.
	
	^definition definingPackageItem name, ' / ', definition printDefinition