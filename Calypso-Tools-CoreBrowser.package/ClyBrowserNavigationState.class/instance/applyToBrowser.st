operations
applyToBrowser
	self restoreBrowserState.
	
	self restoreNavigationState.
	
	self browser tabManager restoreBrowserState: self