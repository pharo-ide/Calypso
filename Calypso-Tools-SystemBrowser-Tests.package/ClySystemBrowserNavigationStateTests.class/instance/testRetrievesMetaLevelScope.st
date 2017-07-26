tests
testRetrievesMetaLevelScope

	self snapshotNavigationState.
	
	self assert: navigationState metaLevelScope equals: browser metaLevelScope