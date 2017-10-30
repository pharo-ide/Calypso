tests
testViewDataSourceIsNotDetatchedAfterSnapshoting

	self snapshotNavigationState.
	
	self assert: (viewDataSource queryResult announcer hasSubscriber: viewDataSource )