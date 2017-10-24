queries
rebuildInScopeClass: anEnvironmentScopeClass

	| newScope |
	newScope := environmentScope asScope: anEnvironmentScopeClass.

	^newScope query: self class