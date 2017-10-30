queries
withoutScopeObject: existingBasisObject

	| newCursor |
	newCursor := itemCursor queryContentInScopeWithout: existingBasisObject.
	^self createSameOn: newCursor