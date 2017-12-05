tests
testViewDataSourceIsNotDetatchedAfterSnapshoting

	self snapshotState.
	
	self assert: (viewDataSource queryResult hasSubscriber: viewDataSource)