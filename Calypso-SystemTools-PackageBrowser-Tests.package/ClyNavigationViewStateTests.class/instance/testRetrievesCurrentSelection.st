tests
testRetrievesCurrentSelection

	self snapshotNavigationState.
	
	self assert: (navigationState selection lastSelectedItem isSameAs: self selectedItem)