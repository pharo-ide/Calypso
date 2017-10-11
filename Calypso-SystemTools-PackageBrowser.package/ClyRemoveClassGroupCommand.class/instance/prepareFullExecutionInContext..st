execution
prepareFullExecutionInContext: aToolContext
	| confirmed |
	super prepareFullExecutionInContext: aToolContext.
	
	classGroup := aToolContext lastSelectedClassGroup.

	classGroup classesSize > 0 ifTrue: [
		confirmed := UIManager default 
			confirm: 'Are you sure you want to remove all classes in group ', classGroup name, '?'.
		confirmed ifFalse: [CmdCommandAborted signal]]