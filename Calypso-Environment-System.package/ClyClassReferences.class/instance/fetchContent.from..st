execution
fetchContent: anEnvironmentContent from: anEnvironmentScope

	self ensureVariableAreActualBindingsIn: anEnvironmentScope systemEnvironment.

	super fetchContent: anEnvironmentContent from: anEnvironmentScope