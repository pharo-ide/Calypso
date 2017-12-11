tests
testRetrievesMethodQuery

	self snapshotState.
	
	self assert: navigationState systemQuery equals: browser systemQuery