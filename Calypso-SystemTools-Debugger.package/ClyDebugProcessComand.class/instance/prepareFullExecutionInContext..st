execution
prepareFullExecutionInContext: aBrowserContext
	super prepareFullExecutionInContext: aBrowserContext.
	
	environment := aBrowserContext navigationEnvironment.
	process := aBrowserContext lastSelectedProcess