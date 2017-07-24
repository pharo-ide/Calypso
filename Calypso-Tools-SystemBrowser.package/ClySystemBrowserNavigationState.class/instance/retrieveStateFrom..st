operations
retrieveStateFrom: aBrowser
	super retrieveStateFrom: aBrowser.
	
	systemScope :=  aBrowser systemScope.
	metaLevelScope := aBrowser metaLevelScope.
	methodGroupContent := aBrowser methodGroupContent