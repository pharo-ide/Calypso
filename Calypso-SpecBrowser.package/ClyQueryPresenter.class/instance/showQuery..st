queries
showQuery: aQuery

	| dataSource |
	dataSource := ClySpecDataSource on: aQuery.
	self dataSource: dataSource