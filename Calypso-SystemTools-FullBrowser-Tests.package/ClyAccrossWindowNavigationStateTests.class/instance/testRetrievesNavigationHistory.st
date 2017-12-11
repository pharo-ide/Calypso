tests
testRetrievesNavigationHistory
	
	self snapshotState.
	
	self assert: navigationState navigationHistory equals: browser navigationHistory