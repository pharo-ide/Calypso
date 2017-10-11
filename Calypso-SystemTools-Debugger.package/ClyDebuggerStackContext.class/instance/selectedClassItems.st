selection-classes
selectedClassItems
	| contextDefinition |
	^self selectedMethodItems collect: [:each | 
		contextDefinition := each getProperty: ClyMethodDefinitionProperty.
		contextDefinition definitionClassItem]