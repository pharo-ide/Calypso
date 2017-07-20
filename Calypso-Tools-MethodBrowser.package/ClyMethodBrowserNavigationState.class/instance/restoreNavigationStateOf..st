operations
restoreNavigationStateOf: aBrowser
	super restoreNavigationStateOf: aBrowser.
	
	aBrowser activeScope: activeScope.
	aBrowser methodQuery: methodQuery