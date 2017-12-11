tests
testSelectedItemPointsToRetrievedDataSource

	| item |
	self snapshotState.
	
	item := navigationState selection items first.
	self assert: item ownerDataSource equals: navigationState dataSource