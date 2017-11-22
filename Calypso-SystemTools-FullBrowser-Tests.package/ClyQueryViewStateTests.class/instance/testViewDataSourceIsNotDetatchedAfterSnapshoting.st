tests
testViewDataSourceIsNotDetatchedAfterSnapshoting

	self snapshotState.
	
	self assert: (viewDataSource queryResult announcer hasSubscriber: viewDataSource )