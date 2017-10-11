tests
testExpandedItemWithRetrievedOwnerDataSource

	| expandedItem |
	self selectedItem expand.
	
	self snapshotNavigationState.
	
	expandedItem := navigationState dataSource expandedItems first.
	self assert: expandedItem ownerDataSource equals: navigationState dataSource