private
restoreBrowserState
	super restoreBrowserState.
	
	self browser 
		systemScope: systemScope;
		metaLevelScope: metaLevelScope;
		methodGroupContent: methodGroupContent