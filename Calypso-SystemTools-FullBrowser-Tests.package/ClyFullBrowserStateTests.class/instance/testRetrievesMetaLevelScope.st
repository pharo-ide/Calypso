tests
testRetrievesMetaLevelScope

	self snapshotState.
	
	self assert: navigationState metaLevelScope equals: browser metaLevelScope