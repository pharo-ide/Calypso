tests
testPluginsWithoutBrowser

	browser addPlugin: ClyStandardBrowserPlugin new.
	
	self snapshotState.
	
	self assert: navigationState browserPlugins first browser isNil