tests
testExpandedDataSourceIsClosed

	| expandedItem |
	self selectedItem expand.
	
	self snapshotState.
	
	expandedItem := navigationState dataSource expandedItems first.
	self assert: expandedItem childrenDataSource isClosed