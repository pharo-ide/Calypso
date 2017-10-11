tests
testRetrievesStateOfAllNavigationViews

	self snapshotNavigationState.
	
	self assert: navigationState viewStates size equals: browser navigationViews size