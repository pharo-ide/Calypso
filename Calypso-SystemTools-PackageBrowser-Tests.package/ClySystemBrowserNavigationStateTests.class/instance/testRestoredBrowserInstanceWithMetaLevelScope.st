tests
testRestoredBrowserInstanceWithMetaLevelScope
	
	browser metaLevelScope: #testScope.
	
	self restoreBrowserInstance.
	
	self assert: browser metaLevelScope equals: #testScope