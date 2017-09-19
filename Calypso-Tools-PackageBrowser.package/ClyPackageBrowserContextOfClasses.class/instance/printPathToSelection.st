printing
printPathToSelection
	| definition |
	definition := self lastSelectedItem getProperty: ClyClassDefinitionProperty.
	
	^definition printDefinition "it should be package name"