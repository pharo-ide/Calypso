tests
testRetrievesMethodGroupContent

	self snapshotState.
	
	self assert: navigationState methodGroupQuery equals: browser methodGroupQuery