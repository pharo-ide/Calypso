tests
testSelectionWithRetrievedDataSourceCopy

	self snapshotNavigationState.
	
	self assert: navigationState selection rootDataSource equals: navigationState dataSource