tests
testRetrievesMethodGroupContent

	self snapshotNavigationState.
	
	self assert: navigationState methodGroupContent equals: browser methodGroupContent