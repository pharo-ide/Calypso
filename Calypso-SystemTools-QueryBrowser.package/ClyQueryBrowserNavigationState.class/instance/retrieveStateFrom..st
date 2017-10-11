operations
retrieveStateFrom: aBrowser
	super retrieveStateFrom: aBrowser.
	
	queryScopes := aBrowser queryScopes.
	activeScope := aBrowser activeScope.
	methodQuery := aBrowser systemQuery