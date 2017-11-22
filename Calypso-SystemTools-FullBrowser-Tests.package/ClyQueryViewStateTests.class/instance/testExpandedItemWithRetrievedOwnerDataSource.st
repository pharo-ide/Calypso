tests
testExpandedItemWithRetrievedOwnerDataSource

	| expandedItem |
	self selectedItem expand.
	
	self snapshotState.
	
	expandedItem := navigationState dataSource expandedItems first.
	self assert: expandedItem ownerDataSource equals: navigationState dataSource