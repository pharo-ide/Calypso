tests
testRetrievesQueryScopes

	self snapshotNavigationState.
	
	self assert: navigationState queryScopes equals: browser queryScopes