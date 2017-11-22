tests
testDataSourceWithoutQueryView

	self snapshotState.
	
	self assert: navigationState dataSource queryView isNil