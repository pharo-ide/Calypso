operations
retrieveBrowserState
	super retrieveBrowserState.
	
	systemScope :=  self browser systemScope.
	metaLevelScope := self browser metaLevelScope.
	methodGroupContent := self browser methodGroupContent