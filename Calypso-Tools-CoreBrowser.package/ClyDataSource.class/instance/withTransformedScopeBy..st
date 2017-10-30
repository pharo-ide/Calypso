queries
withTransformedScopeBy: aBlockWithScopeArg

	| newQueryResult |
	newQueryResult := itemCursor queryContentInTransformedScopeBy: aBlockWithScopeArg.
	^self createSameOn: newQueryResult