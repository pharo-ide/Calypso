queries
queryInScopeWith: basisObject

	| newScope |
	newScope := environmentScope withExtraBasisObject: basisObject.

	^newScope query: self class