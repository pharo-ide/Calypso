testing
isFiltered

	table initialDataSource ifNil: [ ^false ].
	^table initialDataSource ~~ self dataSource