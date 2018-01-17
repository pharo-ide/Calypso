execution
prepareFullExecutionInContext: aToolContext
	| packageName |
	super prepareFullExecutionInContext: aToolContext.
	
	method := aToolContext lastSelectedMethod.
	packageName := method package name.
	repository := IceRepository registry detect: [ :each | each includesPackageNamed: packageName ]