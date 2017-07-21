tests
testRestoredBrowserInstanceWithQueryScopes

	self restoreBrowserInstance.
	self assert: navigationState queryScopes size equals: 2.
	
	self assert: browser queryScopes equals: navigationState queryScopes.
	