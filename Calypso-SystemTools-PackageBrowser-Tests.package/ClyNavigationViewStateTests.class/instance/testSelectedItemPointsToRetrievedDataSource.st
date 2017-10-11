tests
testSelectedItemPointsToRetrievedDataSource

	| item |
	self snapshotNavigationState.
	
	item := navigationState selection items first.
	self assert: item ownerDataSource equals: navigationState dataSource