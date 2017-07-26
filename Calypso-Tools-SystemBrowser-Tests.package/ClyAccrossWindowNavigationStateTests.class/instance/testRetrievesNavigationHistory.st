tests
testRetrievesNavigationHistory
	
	self snapshotNavigationState.
	
	self assert: navigationState navigationHistory equals: browser navigationHistory