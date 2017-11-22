queries
showQuery: aQuery

	| dataSource |
	dataSource := ClyCollapsedDataSource on: aQuery.
	self dataSource: dataSource
	