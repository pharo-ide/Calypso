printing
printProcessContext
	| contextDefinition |
	contextDefinition := definitionItem getProperty: ClyMethodContextDefinitionProperty.
	^contextDefinition printDefinitionItem