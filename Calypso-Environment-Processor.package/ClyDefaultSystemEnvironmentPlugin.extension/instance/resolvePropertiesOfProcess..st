*Calypso-Environment-Processor
resolvePropertiesOfProcess: anEnvironmentItem

	| processDefinition |
	processDefinition := ClyProcessDefinitionProperty of: anEnvironmentItem actualObject.

	self resolvePropertiesOfContext: processDefinition definitionItem.

	anEnvironmentItem addProperty: processDefinition.