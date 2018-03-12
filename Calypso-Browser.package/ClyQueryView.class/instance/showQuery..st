queries
showQuery: aQuery

	| dataSource |
	self initiateUIChangeBy: [ 
		dataSource := ClyCollapsedDataSource on: aQuery adoptedForBrowser.
		self dataSource: dataSource.
		self ensureSelectedItemIfNeeded].