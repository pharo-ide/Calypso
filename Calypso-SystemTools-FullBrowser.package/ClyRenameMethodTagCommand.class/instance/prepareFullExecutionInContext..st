execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	methodGroup := aToolContext lastSelectedMethodGroup.
	newName := aToolContext 
		requestSingleMethodTag: 'New name of protocol' suggesting: methodGroup name.
	newName = methodGroup name ifTrue: [ CmdCommandAborted signal ]