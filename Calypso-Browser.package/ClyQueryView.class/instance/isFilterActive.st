testing
isFilterActive
	table initialDataSource ifNil: [ ^false ].
	
	^self dataSource ~~ table initialDataSource