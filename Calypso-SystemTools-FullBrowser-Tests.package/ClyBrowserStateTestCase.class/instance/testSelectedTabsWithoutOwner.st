tests
testSelectedTabsWithoutOwner

	| tab |
	self snapshotState.
	
	tab := navigationState selectedTabs first.
	self assert: tab owner isNil