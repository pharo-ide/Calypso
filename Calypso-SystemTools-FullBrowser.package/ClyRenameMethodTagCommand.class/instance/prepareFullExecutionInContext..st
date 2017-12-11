execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	methodGroup := aToolContext lastSelectedMethodGroup.
	newName := UIManager default 
		request: 'New name of protocol' 
		initialAnswer: methodGroup name 
		title: 'Rename protocol'.
	newName isEmptyOrNil | (newName = methodGroup name) ifTrue: [ CmdCommandAborted signal ].
	(newName beginsWith: '*') ifTrue: [ 
		self inform: 'Star is forbidden for protocol name. You can move methods to package using context menu command or drag and drop operation'.
		^CmdCommandAborted signal].