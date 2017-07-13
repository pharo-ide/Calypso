execution
prepareFullExecutionInContext: aToolContext
	| tagsString confirmed |
	super prepareFullExecutionInContext: aToolContext.
	
	tagsString := ', ' join: (methodGroups collect: #name).
	(methodGroups anySatisfy: [ :each | each methodsSize > 0])
		ifTrue: [
			confirmed := UIManager default 
					confirm: 'Are you sure you want to remove methods tagged with ', tagsString, '?'.
			confirmed ifFalse: [CmdCommandAborted signal]]