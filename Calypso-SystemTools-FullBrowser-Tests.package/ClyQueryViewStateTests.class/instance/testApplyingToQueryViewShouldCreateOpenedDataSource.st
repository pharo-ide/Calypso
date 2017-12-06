tests
testApplyingToQueryViewShouldCreateOpenedDataSource

	| newView |
	self snapshotState.
	newView := ClyQueryView for: browser.
	navigationState applyTo: newView.
	 
	self assert: newView dataSource ~~ navigationState dataSource.
	self deny: newView dataSource isClosed.
	self assert: newView dataSource queryView equals: newView