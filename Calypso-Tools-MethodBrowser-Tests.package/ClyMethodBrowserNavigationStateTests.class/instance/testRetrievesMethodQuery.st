tests
testRetrievesMethodQuery

	self snapshotNavigationState.
	
	self assert: navigationState methodQuery equals: browser methodQuery