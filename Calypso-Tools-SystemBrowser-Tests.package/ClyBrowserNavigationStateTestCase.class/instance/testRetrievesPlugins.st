tests
testRetrievesPlugins

	browser addPlugin: ClyStandardBrowserPlugin new.
	
	self snapshotNavigationState.
	
	self assert: navigationState plugins first class equals: ClyStandardBrowserPlugin