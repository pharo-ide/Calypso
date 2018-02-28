execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	tagName := aToolContext requestSingleMethodTag: 'New protocol name'