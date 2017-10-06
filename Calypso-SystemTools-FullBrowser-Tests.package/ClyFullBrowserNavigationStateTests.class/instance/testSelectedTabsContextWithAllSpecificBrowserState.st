tests
testSelectedTabsContextWithAllSpecificBrowserState

	| tab |
	self snapshotNavigationState.
	
	tab := navigationState selectedTabs first.
	self assert: tab context metaLevelScope equals: browser metaLevelScope