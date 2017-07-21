operations
retrieveBrowserState
	super retrieveBrowserState.
	
	queryScopes := self browser queryScopes.
	activeScope := self browser activeScope.
	methodQuery := self browser methodQuery