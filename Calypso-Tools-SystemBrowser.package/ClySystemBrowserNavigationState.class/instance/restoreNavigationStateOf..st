operations
restoreNavigationStateOf: aBrowser
	super restoreNavigationStateOf: aBrowser.
	
	aBrowser metaLevelScope: metaLevelScope.
	aBrowser methodGroupContent: methodGroupContent