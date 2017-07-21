private
restoreBrowserState
	super restoreBrowserState.
	
	self browser  
		methodQuery: methodQuery;
		queryScopes: queryScopes;
		activeScope: activeScope