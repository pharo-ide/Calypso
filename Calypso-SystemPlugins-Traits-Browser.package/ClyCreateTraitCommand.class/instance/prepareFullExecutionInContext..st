execution
prepareFullExecutionInContext: aBrowserContext
	super prepareFullExecutionInContext: aBrowserContext.
	
	package := aBrowserContext lastSelectedPackage.
	aBrowserContext isClassTagSelected ifTrue: [ 
		classTag := aBrowserContext lastSelectedClassTag]