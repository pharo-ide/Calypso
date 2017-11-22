tests
testRetrievesPlugins

	browser addPlugin: ClyStandardBrowserPlugin new.
	
	self snapshotState.
	
	self assert: navigationState browserPlugins first class equals: ClyStandardBrowserPlugin