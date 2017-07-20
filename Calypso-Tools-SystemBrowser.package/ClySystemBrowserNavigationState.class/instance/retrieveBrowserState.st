operations
retrieveBrowserState
	super retrieveBrowserState.
	
	metaLevelScope := self browser metaLevelScope.
	methodGroupContent := self browser methodGroupContent