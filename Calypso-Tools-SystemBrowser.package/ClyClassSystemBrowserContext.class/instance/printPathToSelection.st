printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem getProperty: ClyClassDefinitionProperty.
	
	^definition printDefinitionItem "it should package"