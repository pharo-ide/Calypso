tests
testApplyingToQueryViewShouldRestoreExpandedItems

	| expandedItem newView |
	self selectedItem expand.
	
	self snapshotState.
	newView := ClyQueryViewMorph for: browser.
	navigationState applyTo: newView.

	expandedItem := navigationState dataSource expandedItems first.
	self assert: expandedItem childrenDataSource isClosed description: 'applying should not open data source snapshot'.
	
	self assert: newView dataSource expandedItems size equals: 1.	
	expandedItem := newView dataSource expandedItems first.
	self assert: (expandedItem isSameAs: self selectedItem).
	self deny: expandedItem childrenDataSource isClosed.
	self assert: expandedItem childrenDataSource queryView equals: newView.
	self assert: expandedItem childrenDataSource table notNil