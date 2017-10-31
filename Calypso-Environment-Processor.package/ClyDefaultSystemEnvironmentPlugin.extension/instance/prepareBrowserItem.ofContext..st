*Calypso-Environment-Processor
prepareBrowserItem: anItem ofContext: aContext
	| contextDefinition |
	contextDefinition := ClyMethodContextDefinitionProperty of: aContext.
	
	self
		prepareBrowserItem: contextDefinition definitionMethodItem
		ofMethod: aContext method.
		
	anItem addProperty: contextDefinition