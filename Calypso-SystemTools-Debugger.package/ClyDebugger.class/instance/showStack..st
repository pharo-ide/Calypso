navigation
showStack: aProcessStack

	navigationEnvironment := aProcessStack environment.
	
	self changeNavigationStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: aProcessStack)]