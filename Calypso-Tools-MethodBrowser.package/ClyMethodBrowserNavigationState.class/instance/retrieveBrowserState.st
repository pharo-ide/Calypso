operations
retrieveBrowserState
	super retrieveBrowserState.
	
	activeScope := self browser activeScope.
	methodQuery := self browser methodQuery