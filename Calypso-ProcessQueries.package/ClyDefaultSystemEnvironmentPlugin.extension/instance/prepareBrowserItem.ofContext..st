*Calypso-ProcessQueries
prepareBrowserItem: anItem ofContext: aContext
	| contextDefinition |
	contextDefinition := ClyMethodContextDefinitionProperty of: aContext.
	
	self
		decorateBrowserItem: contextDefinition definitionMethodItem
		ofMethod: aContext method.
		
	anItem addProperty: contextDefinition