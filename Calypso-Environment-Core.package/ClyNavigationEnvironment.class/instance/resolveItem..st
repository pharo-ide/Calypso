queries
resolveItem: anEnvironmentItem

	anEnvironmentItem isResolved ifTrue: [ ^self ].
	
	plugins do: [ :each | 
		anEnvironmentItem resolvePropertiesBy: each].
	
	anEnvironmentItem beResolved