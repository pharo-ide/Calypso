execution
prepareFullExecutionInContext: aBrowserContext
	super prepareFullExecutionInContext: aBrowserContext.
	
	packages := browser searchDialog 
		requestMultipleObjects: 'Select package scope' 
		from: ClyAllPackages sorted.
	packages ifEmpty: [ CmdCommandAborted signal ]