selection-methods
selectedMethodItems
	| contextDefinition |
	^selectedItems collect: [:contextItem | 
		contextDefinition := contextItem getProperty: ClyMethodContextDefinitionProperty.
		contextDefinition definitionMethodItem]