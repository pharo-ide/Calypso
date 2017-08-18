public
selectedMethods
	| contextDefinition |
	^selectedItems collect: [:contextItem | 
		contextDefinition := contextItem getProperty: ClyMethodContextDefinitionProperty.
		contextDefinition definitionMethod]