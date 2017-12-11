tests
testSelectedTabsWithRetrievedContext

	| tab |
	self snapshotState.
	
	tab := navigationState selectedTabs first.
	self assert: tab context class equals: browser tabManager selectedTools first context class