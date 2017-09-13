execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	"class group could be package. In this activation it is only make sense to request user for package"
	
	classGroup := aToolContext requestSinglePackage: 'Choose package'