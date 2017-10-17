execution
fetchResultAs: aQueryResult inScope: anEnvironmentScope
	
	self ensureVariableAreActualBindingsIn: anEnvironmentScope system.
	
	super fetchResultAs: aQueryResult inScope: anEnvironmentScope