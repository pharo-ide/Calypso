tests
testRetrievesActiveScope

	self snapshotState.
	
	self assert: navigationState activeScope equals: browser activeScope