tests
testApplyingToQueryViewShouldRestoreExpandedItems

	| expandedItem newView |
	self selectedItem expand.
	
	self snapshotState.
	newView := ClyQueryView for: browser.
	navigationState applyTo: newView.

	expandedItem := navigationState dataSource expandedItems first.
	self assert: expandedItem childrenDataSource isClosed description: 'applying should not open data source snapshot'.
	
	
	self assert: newView dataSource expandedItems size equals: 1.	
	self assert: (newView dataSource expandedItems first isSameAs: self selectedItem).
	self deny: newView dataSource expandedItems first childrenDataSource isClosed.
	self assert: newView dataSource expandedItems first childrenDataSource queryView equals: newView.