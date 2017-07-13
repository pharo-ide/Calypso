execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	methodGroup := aToolContext lastSelectedMethodGroup.
	newName := UIManager default 
		request: 'New name of protocol' 
		initialAnswer: methodGroup name 
		title: 'Rename protocol'.
	newName isEmptyOrNil | (newName = methodGroup name) ifTrue: [ CmdCommandAborted signal ]