tests
testSelectedTabsContextWithAllSpecificBrowserState

	| tab |
	self snapshotState.
	
	tab := navigationState selectedTabs first.
	self assert: tab context metaLevelScope equals: browser metaLevelScope