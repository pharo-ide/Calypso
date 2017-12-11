tests
testSelectionWithRetrievedDataSourceCopy

	self snapshotState.
	
	self assert: navigationState selection rootDataSource equals: navigationState dataSource