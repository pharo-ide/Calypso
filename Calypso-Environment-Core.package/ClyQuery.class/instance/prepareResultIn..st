execution
prepareResultIn: aNavigationEnvironment
	scope environment: aNavigationEnvironment.
	
	^requiredResult prepareNewFor: self in: aNavigationEnvironment