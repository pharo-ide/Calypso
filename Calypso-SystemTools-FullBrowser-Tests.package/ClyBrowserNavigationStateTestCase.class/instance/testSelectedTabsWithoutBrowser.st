tests
testSelectedTabsWithoutBrowser

	| tab |
	self snapshotNavigationState.
	
	tab := navigationState selectedTabs first.
	self assert: tab browser isNil