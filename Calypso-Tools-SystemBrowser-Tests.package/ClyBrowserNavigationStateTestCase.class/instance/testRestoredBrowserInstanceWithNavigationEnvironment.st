tests
testRestoredBrowserInstanceWithNavigationEnvironment
	
	self restoreBrowserInstance.
	
	self assert: browser navigationEnvironment equals: environment