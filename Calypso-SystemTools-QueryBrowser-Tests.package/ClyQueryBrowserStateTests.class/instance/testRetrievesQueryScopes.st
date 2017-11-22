tests
testRetrievesQueryScopes

	self snapshotState.
	
	self assert: navigationState queryScopes equals: browser queryScopes