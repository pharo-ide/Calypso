execution
fetchContent: anEnvironmentContent
	self ensureVariableAreActualBindingsIn: scope system.
	super fetchContent: anEnvironmentContent