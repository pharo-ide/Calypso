tests
testPluginsWithoutBrowser

	browser addPlugin: ClyStandardBrowserPlugin new.
	
	self snapshotNavigationState.
	
	self assert: navigationState plugins first browser isNil