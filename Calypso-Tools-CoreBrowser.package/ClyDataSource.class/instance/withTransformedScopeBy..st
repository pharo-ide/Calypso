queries
withTransformedScopeBy: aBlockWithScopeArg

	| newCursor |
	newCursor := environmentCursor queryContentInTransformedScopeBy: aBlockWithScopeArg.
	^self createSameOn: newCursor