tests
testDataSourceWithExpandedItems

	self selectedItem expand.
	
	self snapshotState.
	
	self assert: (navigationState dataSource expandedItems first isSameAs: viewDataSource expandedItems first)