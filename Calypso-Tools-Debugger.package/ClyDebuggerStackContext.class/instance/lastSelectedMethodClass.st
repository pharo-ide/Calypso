public
lastSelectedMethodClass
	| contextDefinition methodDefinition |
	contextDefinition := self lastSelectedItem 
		getProperty: ClyMethodContextDefinitionProperty.
	
	methodDefinition := contextDefinition definitionMethodItem getProperty: ClyMethodDefinitionProperty.
	^methodDefinition definitionClass