tests
testRetrievesPlugins

	browser addPlugin: ClyStandardBrowserPlugin new.
	
	self snapshotNavigationState.
	
	self assert: navigationState browserPlugins first class equals: ClyStandardBrowserPlugin