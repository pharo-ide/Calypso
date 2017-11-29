printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem getProperty: ClyMethodDefinitionProperty.
	
	^definition definingPackageItem name, ' / ', definition printDefinition 