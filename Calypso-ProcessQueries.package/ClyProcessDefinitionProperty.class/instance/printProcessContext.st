printing
printProcessContext
	| contextDefinition |
	contextDefinition := activeContextItem getProperty: ClyMethodContextDefinitionProperty.
	^contextDefinition printDefinition