operations
restoreNavigationState
	super restoreNavigationState.
	
	self browser activeScope: activeScope.
	self browser methodQuery: methodQuery