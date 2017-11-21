execution
buildResult: aQueryResult
	self ensureVariableAreActualBindingsIn: scope system.
	super buildResult: aQueryResult