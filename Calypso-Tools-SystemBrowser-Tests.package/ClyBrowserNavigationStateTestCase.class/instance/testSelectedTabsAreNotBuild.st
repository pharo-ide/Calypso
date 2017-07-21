tests
testSelectedTabsAreNotBuild

	| tab |
	self snapshotNavigationState.
	
	tab := navigationState selectedTabs first.
	self deny: tab isBuilt