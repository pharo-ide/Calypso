queries
withoutScopeObject: existingBasisObject

	| newQueryResult |
	newQueryResult := itemCursor queryContentInScopeWithout: existingBasisObject.
	^self createSameOn: newQueryResult