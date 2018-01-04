execution
readParametersFromContext: aToolContext
	super readParametersFromContext: aToolContext.
	testItems := aToolContext selectedItems 
		select: [ :each | each hasProperty: ClyTestedMethodProperty ]