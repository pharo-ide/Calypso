*Calypso-Environment-System
systemDefinition
	
	^self 
		getProperty: ClySystemDefinitionProperty 
		ifAbsent: [ self error: 'No system definition is specified for item' ].