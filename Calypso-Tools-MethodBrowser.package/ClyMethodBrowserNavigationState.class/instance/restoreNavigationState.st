operations
restoreNavigationState
	super restoreNavigationState.
	
	browser activeScope: activeScope.
	browser methodQuery: methodQuery