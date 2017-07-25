operations
applyTo: aBrowser

	aBrowser changeNavigationStateBy: [ 
		self restoreStateOf: aBrowser.	
		self restoreNavigationStateOf: aBrowser.
		aBrowser tabManager restoreBrowserState: self
	]