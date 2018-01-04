testing
canBeExecutedInContext: aToolContext
	
	^aToolContext selectedMethodItems anySatisfy: [ :each | 
		each hasProperty: ClyTestedMethodProperty ]