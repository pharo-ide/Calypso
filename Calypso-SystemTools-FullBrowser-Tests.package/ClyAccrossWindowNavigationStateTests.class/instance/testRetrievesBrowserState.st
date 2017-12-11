tests
testRetrievesBrowserState

	self snapshotState.
	
	self assert: (navigationState browserState isKindOf: ClyBrowserState )