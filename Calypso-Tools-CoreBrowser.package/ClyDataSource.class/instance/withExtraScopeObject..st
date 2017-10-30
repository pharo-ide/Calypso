queries
withExtraScopeObject: newBasisObject

	| newQueryResult |
	newQueryResult := itemCursor queryContentInScopeWith: newBasisObject.
	^self createSameOn: newQueryResult