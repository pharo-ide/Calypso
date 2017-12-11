tests
testSelectedChildInExpandedItemWithRetrievedExpandedDataSource

	| selectedItem retrievedSelectedItem |
	self selectedItem expand.
	selectedItem := self selectedItem childrenDataSource elementAt: 1. "some class group".
	queryView selection selectItems: { selectedItem }.
	self snapshotState.
	
	retrievedSelectedItem := navigationState selection items first.
	self assert: retrievedSelectedItem ownerDataSource equals: navigationState dataSource expandedItems first childrenDataSource