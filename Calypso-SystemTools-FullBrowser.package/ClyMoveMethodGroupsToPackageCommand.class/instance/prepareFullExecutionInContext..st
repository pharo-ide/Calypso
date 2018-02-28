execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	package := aToolContext requestSinglePackage: 'Choose package'