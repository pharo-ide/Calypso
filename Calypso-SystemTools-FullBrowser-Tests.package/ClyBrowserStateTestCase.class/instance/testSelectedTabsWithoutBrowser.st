tests
testSelectedTabsWithoutBrowser

	| tab |
	self snapshotState.
	
	tab := navigationState selectedTabs first.
	self assert: tab browser isNil