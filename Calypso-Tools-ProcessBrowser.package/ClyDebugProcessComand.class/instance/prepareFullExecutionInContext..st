execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	process := aToolContext lastSelectedProcess.
	environment := aToolContext browser navigationEnvironment.