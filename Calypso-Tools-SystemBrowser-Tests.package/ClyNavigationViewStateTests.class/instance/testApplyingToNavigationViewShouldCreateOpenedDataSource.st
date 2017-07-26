tests
testApplyingToNavigationViewShouldCreateOpenedDataSource

	| newView |
	self snapshotNavigationState.
	newView := ClyNavigationView for: browser.
	navigationState applyTo: newView.
	 
	self assert: newView dataSource ~~ navigationState dataSource.
	self deny: newView dataSource isClosed