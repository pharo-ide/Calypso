operations
applyTo: aBrowser

	self restoreStateOf: aBrowser.	
	self restoreNavigationStateOf: aBrowser.
	
	aBrowser tabManager restoreBrowserState: self