tests
testSelectedTabsWithRetrievedContext

	| tab |
	self snapshotNavigationState.
	
	tab := navigationState selectedTabs first.
	self assert: tab context class equals: browser tabManager selectedTools first context class