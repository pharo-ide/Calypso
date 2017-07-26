private
restoreStateOf: aBrowser
	super restoreStateOf: aBrowser.
	
	aBrowser  
		methodQuery: methodQuery;
		queryScopes: queryScopes;
		activeScope: activeScope