tests
testRestoredBrowserInstanceWithMethodGroupQuery
	
	browser methodGroupQuery: #testQuery.
	
	self restoreBrowserInstance.
	
	self assert: browser methodGroupQuery equals: #testQuery