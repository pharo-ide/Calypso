tests
testExpandedDataSourceIsClosed

	| expandedItem |
	self selectedItem expand.
	
	self snapshotNavigationState.
	
	expandedItem := navigationState dataSource expandedItems first.
	self assert: expandedItem childrenDataSource isClosed