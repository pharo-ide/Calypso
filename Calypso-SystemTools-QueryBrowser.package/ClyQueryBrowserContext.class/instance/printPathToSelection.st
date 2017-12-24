printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem systemDefinition.
	
	^definition definingPackageItem name, ' / ', definition printDefinition