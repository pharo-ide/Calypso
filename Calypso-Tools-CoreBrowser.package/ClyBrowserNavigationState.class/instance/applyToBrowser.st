operations
applyToBrowser
	browser changeNavigationStateBy: [ 
		self restoreNavigationState].
	
	browser tabManager restoreBrowserState: self