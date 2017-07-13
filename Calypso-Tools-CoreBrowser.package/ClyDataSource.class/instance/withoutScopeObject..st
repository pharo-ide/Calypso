queries
withoutScopeObject: existingBasisObject

	| newCursor |
	newCursor := environmentCursor queryContentInScopeWithout: existingBasisObject.
	^self createSameOn: newCursor