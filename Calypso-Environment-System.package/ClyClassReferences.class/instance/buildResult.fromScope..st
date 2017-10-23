execution
buildResult: aQueryResult fromScope: anEnvironmentScope
	
	self ensureVariableAreActualBindingsIn: anEnvironmentScope system.
	
	super buildResult: aQueryResult fromScope: anEnvironmentScope