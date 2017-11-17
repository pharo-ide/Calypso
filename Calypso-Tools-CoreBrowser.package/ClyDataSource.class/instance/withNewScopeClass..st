queries
withNewScopeClass: aScopeClass

	| newQueryResult |
	newQueryResult := itemCursor queryContentInNewScopeClass: aScopeClass.
	^self createSameOn: newQueryResult