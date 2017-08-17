initialization
processPriorityOf: processItem

	| definition |
	definition := processItem getProperty: ClyProcessDefinitionProperty.
	^definition priority