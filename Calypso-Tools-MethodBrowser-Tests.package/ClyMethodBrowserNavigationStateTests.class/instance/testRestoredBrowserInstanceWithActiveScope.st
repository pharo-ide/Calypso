tests
testRestoredBrowserInstanceWithActiveScope

	browser activeScope: browser queryScopes last.
	
	self restoreBrowserInstance.
	
	self assert: browser activeScope equals: browser queryScopes last