operations
restoreNavigationState
	super restoreNavigationState.
	
	self browser metaLevelScope: metaLevelScope.
	self browser methodGroupContent: methodGroupContent