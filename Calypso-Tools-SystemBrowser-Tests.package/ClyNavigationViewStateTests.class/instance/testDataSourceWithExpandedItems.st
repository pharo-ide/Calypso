tests
testDataSourceWithExpandedItems

	self selectedItem expand.
	
	self snapshotNavigationState.
	
	self assert: (navigationState dataSource expandedItems first isSameAs: viewDataSource expandedItems first)