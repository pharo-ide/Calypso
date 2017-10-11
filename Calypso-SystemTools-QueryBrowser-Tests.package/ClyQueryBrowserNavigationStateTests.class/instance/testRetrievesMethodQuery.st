tests
testRetrievesMethodQuery

	self snapshotNavigationState.
	
	self assert: navigationState systemQuery equals: browser systemQuery