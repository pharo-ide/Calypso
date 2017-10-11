tests
testRestoredBrowserInstanceWithMethodGroupContent
	
	browser methodGroupContent: #testContent.
	
	self restoreBrowserInstance.
	
	self assert: browser methodGroupContent equals: #testContent