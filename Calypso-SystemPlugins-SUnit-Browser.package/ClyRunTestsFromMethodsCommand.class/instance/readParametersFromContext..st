execution
readParametersFromContext: aToolContext
	super readParametersFromContext: aToolContext.
	
	targetTestCases := aToolContext selectedClassItems 
		select: [ :each | each hasProperty: ClyTestResultProperty ]
		thenCollect: [ :item | item actualObject ]