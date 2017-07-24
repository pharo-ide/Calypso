tests
testSelectedTabsContextItemsWithSnapshotOfDataSource

	| tab contextItem |
	browser selectedPackages selectItems: {browser packageView dataSource elementAt: 1}.
	self snapshotNavigationState.
	
	tab := navigationState selectedTabs first.
	contextItem := tab context selectedItems first.
	self deny: contextItem ownerDataSource == browser packageView dataSource.
	self assert: contextItem ownerDataSource table isNil.
	self assert: contextItem ownerDataSource itemsView isNil.
	self assert: contextItem ownerDataSource isClosed.