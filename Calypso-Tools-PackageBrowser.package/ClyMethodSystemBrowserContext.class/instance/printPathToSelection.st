printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem getProperty: ClyMethodDefinitionProperty.
	
	^definition packageItem name, ' / ', definition printDefinitionItem 