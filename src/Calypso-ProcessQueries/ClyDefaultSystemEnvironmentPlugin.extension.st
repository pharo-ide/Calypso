Extension { #name : #ClyDefaultSystemEnvironmentPlugin }

{ #category : #'*Calypso-ProcessQueries' }
ClyDefaultSystemEnvironmentPlugin >> prepareBrowserItem: anItem ofContext: aContext [
	| contextDefinition |
	contextDefinition := ClyMethodContextDefinitionProperty of: aContext.
	
	self
		decorateBrowserItem: contextDefinition definitionMethodItem
		ofMethod: aContext method.
		
	anItem addProperty: contextDefinition
]

{ #category : #'*Calypso-ProcessQueries' }
ClyDefaultSystemEnvironmentPlugin >> prepareBrowserItem: anItem ofProcess: aProcess [
	| processDefinition |
	processDefinition := ClyProcessDefinitionProperty of: aProcess.
	self
		prepareBrowserItem: processDefinition activeContextItem
		ofContext: processDefinition activeContext.
		
	anItem addProperty: processDefinition
]
