queries
showQuery: aQuery

	| dataSource |
	self initiateUIChangeBy: [ 
		dataSource := ClyCollapsedDataSource on: aQuery.
		self dataSource: dataSource.
		self ensureSelectedItemIfNeeded].