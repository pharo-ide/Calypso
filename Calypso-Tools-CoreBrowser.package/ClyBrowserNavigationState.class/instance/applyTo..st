operations
applyTo: aBrowser
	aBrowser changeNavigationStateBy: [ 
		self restoreNavigationStateOf: aBrowser].
	
	aBrowser tabManager restoreBrowserState: self