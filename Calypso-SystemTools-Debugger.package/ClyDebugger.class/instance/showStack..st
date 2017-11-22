navigation
showStack: aProcessStack

	navigationEnvironment := aProcessStack environment.
	
	self changeStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: aProcessStack)]