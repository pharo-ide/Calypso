operations
retrieveStateFrom: aBrowser
	super retrieveStateFrom: aBrowser.
	
	metaLevelScope := aBrowser metaLevelScope.
	methodGroupQuery := aBrowser methodGroupQuery