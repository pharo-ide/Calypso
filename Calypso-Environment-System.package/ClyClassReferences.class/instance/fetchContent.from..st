execution
fetchContent: anEnvironmentContent from: anEnvironmentScope

	self ensureVariableAreActualBindingsIn: anEnvironmentScope system.

	super fetchContent: anEnvironmentContent from: anEnvironmentScope