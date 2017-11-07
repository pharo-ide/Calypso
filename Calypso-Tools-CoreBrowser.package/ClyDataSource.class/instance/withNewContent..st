queries
withNewContent: aQuery

	| newQueryResult |
	newQueryResult := itemCursor query: aQuery.
	^self createSameOn: newQueryResult