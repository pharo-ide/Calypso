tests
testCreatesBrowserWithNavigationHistory
	
	self restoreBrowserInstance.
	
	self assert: browser navigationHistory equals: navigationState navigationHistory