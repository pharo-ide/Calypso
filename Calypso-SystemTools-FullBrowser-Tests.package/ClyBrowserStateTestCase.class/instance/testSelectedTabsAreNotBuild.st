tests
testSelectedTabsAreNotBuild

	| tab |
	self snapshotState.
	
	tab := navigationState selectedTabs first.
	self deny: tab isBuilt