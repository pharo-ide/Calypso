queries
resolveItem: anEnvironmentItem of: anEnvironmentContent

	anEnvironmentItem isResolved ifTrue: [ ^self ].
	
	plugins do: [ :each | 
		anEnvironmentContent resolvePropertiesOf: anEnvironmentItem by: each].
	
	anEnvironmentItem beResolved