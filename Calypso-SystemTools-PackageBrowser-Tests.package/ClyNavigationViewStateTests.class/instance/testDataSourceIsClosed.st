tests
testDataSourceIsClosed

	self snapshotNavigationState.
	
	self assert: navigationState dataSource isClosed