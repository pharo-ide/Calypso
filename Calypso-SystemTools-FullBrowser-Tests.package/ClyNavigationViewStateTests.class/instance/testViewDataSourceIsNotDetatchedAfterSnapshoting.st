tests
testViewDataSourceIsNotDetatchedAfterSnapshoting

	self snapshotNavigationState.
	
	self assert: (viewDataSource content announcer hasSubscriber: viewDataSource )