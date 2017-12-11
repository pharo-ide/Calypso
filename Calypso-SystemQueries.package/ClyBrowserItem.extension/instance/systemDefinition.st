*Calypso-SystemQueries
systemDefinition
	
	^self 
		getProperty: ClyItemDefinitionProperty 
		ifAbsent: [ self error: 'No system definition is specified for item' ].