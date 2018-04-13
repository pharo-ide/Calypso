tests
testSelectedTabsWithoutContext

	| tab |
	self snapshotState.
	
	tab := navigationState selectedTabs first.
	self assert: tab context isNil