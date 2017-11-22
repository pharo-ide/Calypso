operations
retrieveStateFrom: aBrowser
	super retrieveStateFrom: aBrowser.
	
	metaLevelScope := aBrowser metaLevelScope.
	methodGroupContent := aBrowser methodGroupContent