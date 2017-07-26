tests
testRetrievesSystemScope

	self snapshotNavigationState.
	
	self assert: navigationState systemScope equals: environment systemScope