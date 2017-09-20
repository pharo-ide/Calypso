tests
testDataSourceWithoutNavigationView

	self snapshotNavigationState.
	
	self assert: navigationState dataSource itemsView isNil