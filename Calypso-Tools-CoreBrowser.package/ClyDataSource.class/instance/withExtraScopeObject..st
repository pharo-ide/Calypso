queries
withExtraScopeObject: newBasisObject

	| newCursor |
	newCursor := itemCursor queryContentInScopeWith: newBasisObject.
	^self createSameOn: newCursor