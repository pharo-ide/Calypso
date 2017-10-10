*Calypso-Environment-Processor
resolvePropertiesOfContext: anEnvironmentItem

	| contextDefinition |
	contextDefinition := ClyMethodContextDefinitionProperty of: anEnvironmentItem actualObject.

	self resolvePropertiesOfMethod: contextDefinition definitionMethodItem.

	anEnvironmentItem addProperty: contextDefinition