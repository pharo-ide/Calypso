tests
testSelectedTabsContextWithoutBrowser

	| tab |
	self snapshotState.
	
	tab := navigationState selectedTabs first.
	self assert: tab context tool isNil