tests
testRestoredBrowserInstanceWithPlugins

	browser addPlugin: ClyStandardBrowserPlugin new.
	
	self restoreBrowserInstance.
	
	self assert: browser plugins first browser equals: browser.
	self assert: browser plugins first class equals: ClyStandardBrowserPlugin.
	self deny: navigationState plugins first == browser plugins first