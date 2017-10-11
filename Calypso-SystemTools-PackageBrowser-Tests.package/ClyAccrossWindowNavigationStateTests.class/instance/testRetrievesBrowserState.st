tests
testRetrievesBrowserState

	self snapshotNavigationState.
	
	self assert: (navigationState browserState isKindOf: ClyBrowserNavigationState )