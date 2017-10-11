tests
testCreatesBrowserWithNavigationEnvironment
	
	self restoreBrowserInstance.
	
	self assert: browser navigationEnvironment equals: environment