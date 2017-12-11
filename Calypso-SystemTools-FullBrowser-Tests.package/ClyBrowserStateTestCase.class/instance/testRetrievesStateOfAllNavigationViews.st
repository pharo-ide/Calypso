tests
testRetrievesStateOfAllNavigationViews

	self snapshotState.
	
	self assert: navigationState viewStates size equals: browser navigationViews size