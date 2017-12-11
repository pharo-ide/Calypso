tests
testDataSourceWithoutTable

	self snapshotState.
	
	self assert: navigationState dataSource table isNil