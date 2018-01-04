execution
prepareFullExecutionInContext: aBrowserContext
	super prepareFullExecutionInContext: aBrowserContext.
	
	script := aBrowserContext selectedClassScript.
	targetClass := aBrowserContext selectedClasses
		detect: [ :each | script isImplementedByClass: each ]
		ifNone: [ script implementorClass ]