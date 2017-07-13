queries
queryInScopeOf: newBasisObjects

	| newScope |
	newScope := environmentScope withNewBasisObjects: newBasisObjects.

	^newScope query: self class