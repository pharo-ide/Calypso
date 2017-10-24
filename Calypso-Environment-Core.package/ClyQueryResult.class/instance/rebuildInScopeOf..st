queries
rebuildInScopeOf: newBasisObjects

	| newScope |
	newScope := environmentScope withNewBasisObjects: newBasisObjects.

	^newScope query: self class