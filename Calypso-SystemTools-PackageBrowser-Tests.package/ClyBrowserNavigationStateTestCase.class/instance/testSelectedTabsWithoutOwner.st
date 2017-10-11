tests
testSelectedTabsWithoutOwner

	| tab |
	self snapshotNavigationState.
	
	tab := navigationState selectedTabs first.
	self assert: tab owner isNil