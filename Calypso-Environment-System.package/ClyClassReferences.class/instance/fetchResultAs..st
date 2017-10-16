execution
fetchResultAs: anEnvironmentContent
	self ensureVariableAreActualBindingsIn: scope system.
	super fetchResultAs: anEnvironmentContent