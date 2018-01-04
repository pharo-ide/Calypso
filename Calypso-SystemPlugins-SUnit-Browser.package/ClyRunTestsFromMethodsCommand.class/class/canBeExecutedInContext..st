testing
canBeExecutedInContext: aToolContext
	(super canBeExecutedInContext: aToolContext) ifFalse: [ ^false ].
	
	^aToolContext selectedClassItems anySatisfy: [ :each | 
			each hasProperty: ClyTestResultProperty ]