operations
applyToBrowser
	self browser changeNavigationStateBy: [ 
		self restoreNavigationState].
	
	self browser tabManager restoreBrowserState: self