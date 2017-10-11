tests
testRetrievesActiveScope

	self snapshotNavigationState.
	
	self assert: navigationState activeScope equals: browser activeScope