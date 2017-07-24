private
restoreStateOf: aBrowser
	super restoreStateOf: aBrowser.
	
	aBrowser 
		systemScope: systemScope;
		metaLevelScope: metaLevelScope;
		methodGroupContent: methodGroupContent