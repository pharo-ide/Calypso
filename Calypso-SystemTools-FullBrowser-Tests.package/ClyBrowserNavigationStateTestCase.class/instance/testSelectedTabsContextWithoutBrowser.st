tests
testSelectedTabsContextWithoutBrowser

	| tab |
	self snapshotNavigationState.
	
	tab := navigationState selectedTabs first.
	self assert: tab context browser isNil