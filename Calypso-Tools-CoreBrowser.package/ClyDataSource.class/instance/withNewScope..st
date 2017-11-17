queries
withNewScope: aScope

	| newQueryResult |
	newQueryResult := itemCursor queryContentInNewScope: aScope.
	^self createSameOn: newQueryResult