initialization
printCurrentContextOf: processItem

	| definition context |
	definition := processItem getProperty: ClyProcessDefinitionProperty.
	context := definition definitionItem actualObject.
	^context receiver class name, '>>', context selector