queries
withExtraScopeObject: newBasisObject

	| newCursor |
	newCursor := environmentCursor queryContentInScopeWith: newBasisObject.
	^self createSameOn: newCursor