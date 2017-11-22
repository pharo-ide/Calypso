tests
testRetrievesBrowserEnvironment

	self snapshotState.
	
	self assert: navigationState navigationEnvironment equals: environment