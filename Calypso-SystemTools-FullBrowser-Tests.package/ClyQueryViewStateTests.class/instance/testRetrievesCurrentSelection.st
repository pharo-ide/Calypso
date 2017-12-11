tests
testRetrievesCurrentSelection

	self snapshotState.
	
	self assert: (navigationState selection lastSelectedItem isSameAs: self selectedItem)