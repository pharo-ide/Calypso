*Calypso-ProcessQueries
prepareBrowserItem: anItem ofProcess: aProcess
	| processDefinition |
	processDefinition := ClyProcessDefinitionProperty of: aProcess.
	self
		prepareBrowserItem: processDefinition activeContextItem
		ofContext: processDefinition activeContext.
		
	anItem addProperty: processDefinition