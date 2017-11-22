private
restoreStateOf: aBrowser
	super restoreStateOf: aBrowser.
	
	aBrowser  
		systemQuery: methodQuery;
		queryScopes: queryScopes;
		activeScope: activeScope