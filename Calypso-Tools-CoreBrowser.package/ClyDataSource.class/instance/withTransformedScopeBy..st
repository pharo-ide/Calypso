queries
withTransformedScopeBy: aBlockWithScopeArg

	| newCursor |
	newCursor := itemCursor queryContentInTransformedScopeBy: aBlockWithScopeArg.
	^self createSameOn: newCursor