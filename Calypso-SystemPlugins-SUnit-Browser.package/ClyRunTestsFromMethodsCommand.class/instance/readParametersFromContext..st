execution
readParametersFromContext: aToolContext
	super readParametersFromContext: aToolContext.
	
	runTestCases := aToolContext selectedClassItems 
		select: [ :each | each hasProperty: ClyTestResultProperty ]
		thenCollect: [ :item | item actualObject ]