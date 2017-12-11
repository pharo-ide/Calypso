operations
applyTo: aBrowser

	aBrowser changeStateBy: [ 
		self restoreStateOf: aBrowser.	
		self restoreNavigationStateOf: aBrowser.
		aBrowser tabManager restoreBrowserState: self
	]