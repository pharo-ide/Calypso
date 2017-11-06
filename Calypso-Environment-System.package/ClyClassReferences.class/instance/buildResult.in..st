execution
buildResult: aQueryResult in: aNavigationEnvironment
	
	self ensureVariableAreActualBindingsIn: aNavigationEnvironment system.
	
	super buildResult: aQueryResult in: aNavigationEnvironment