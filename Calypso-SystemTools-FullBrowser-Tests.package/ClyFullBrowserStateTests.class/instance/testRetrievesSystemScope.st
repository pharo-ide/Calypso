tests
testRetrievesSystemScope

	self snapshotState.
	
	self assert: navigationState systemScope equals: environment systemScope