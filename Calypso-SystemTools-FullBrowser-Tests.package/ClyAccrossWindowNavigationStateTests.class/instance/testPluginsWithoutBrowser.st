tests
testPluginsWithoutBrowser

	browser addPlugin: ClyStandardBrowserPlugin new.
	
	self snapshotNavigationState.
	
	self assert: navigationState browserPlugins first browser isNil