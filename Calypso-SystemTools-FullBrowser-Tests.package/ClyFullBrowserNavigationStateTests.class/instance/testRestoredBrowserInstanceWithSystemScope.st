tests
testRestoredBrowserInstanceWithSystemScope
	
	browser systemScope: #testScope.
	
	self restoreBrowserInstance.
	
	self assert: browser systemScope equals: #testScope