tests
testRetrievesMethodGroupContent

	self snapshotState.
	
	self assert: navigationState methodGroupContent equals: browser methodGroupContent