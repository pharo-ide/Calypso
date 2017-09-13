*Calypso-Environment-Processor
resolvePropertiesOfContext: anEnvironmentItem

	| contextDefinition |
	contextDefinition := ClyMethodContextDefinitionProperty of: anEnvironmentItem actualObject.

	self resolvePropertiesOfMethod: contextDefinition definitionItem.

	anEnvironmentItem addProperty: contextDefinition