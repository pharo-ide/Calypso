*Calypso-Environment-System
systemDefinition
	
	^self 
		getProperty: ClyDefinitionProperty 
		ifAbsent: [ self error: 'No system definition is specified for item' ].