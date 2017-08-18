initialization
printCurrentContextOf: processItem

	| definition |
	definition := processItem getProperty: ClyProcessDefinitionProperty.
	^definition printProcessContext