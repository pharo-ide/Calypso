tests
testRetrievesBrowserEnvironment

	self snapshotNavigationState.
	
	self assert: navigationState navigationEnvironment equals: environment