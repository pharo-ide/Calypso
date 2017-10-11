tests
testDataSourceWithoutTable

	self snapshotNavigationState.
	
	self assert: navigationState dataSource table isNil