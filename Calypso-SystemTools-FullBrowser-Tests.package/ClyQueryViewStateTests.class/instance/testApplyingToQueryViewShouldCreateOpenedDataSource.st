tests
testApplyingToQueryViewShouldCreateOpenedDataSource

	| newView |
	self snapshotState.
	newView := ClyQueryViewMorph for: browser.
	navigationState applyTo: newView.
	 
	self assert: newView dataSource ~~ navigationState dataSource.
	self deny: newView dataSource isClosed.
	self assert: newView dataSource queryView equals: newView.
	self assert: newView dataSource table notNil