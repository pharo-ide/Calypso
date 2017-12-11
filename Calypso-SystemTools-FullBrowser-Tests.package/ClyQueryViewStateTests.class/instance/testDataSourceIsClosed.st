tests
testDataSourceIsClosed

	self snapshotState.
	
	self assert: navigationState dataSource isClosed