execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	classGroup := aToolContext lastSelectedClassGroup.
	newName := UIManager default 
		request: 'New name of the class tag' 
		initialAnswer: classGroup name 
		title: 'Rename a class tag'.
	newName isEmptyOrNil | (newName = classGroup name) ifTrue: [ CmdCommandAborted signal]