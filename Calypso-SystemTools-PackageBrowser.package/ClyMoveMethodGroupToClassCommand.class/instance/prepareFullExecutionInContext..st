execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	targetClass := aToolContext requestSingleClass: 'Choose class'.
	targetClass := aToolContext resolveCurrentClassSideOf: targetClass