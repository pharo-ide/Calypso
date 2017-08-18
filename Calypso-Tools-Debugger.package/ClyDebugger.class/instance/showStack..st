navigation
showStack: aProcessStack

	| cursor |
	navigationEnvironment := aProcessStack environment.
	cursor := aProcessStack newCursor.
	
	self changeNavigationStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: cursor)]