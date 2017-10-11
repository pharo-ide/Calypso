selection-methods
selectedMethodItems
	| contextDefinition |
	^self selectedContextItems collect: [:contextItem | 
		contextDefinition := contextItem getProperty: ClyMethodContextDefinitionProperty.
		contextDefinition definitionMethodItem]