controlling
closeDataSource
	self dataSource ifNotNil: [ :ds | ds close ].
	table initialDataSource ifNotNil: [:ds | 
		ds == self dataSource ifFalse: [ ds close ].
		"table initialDataSource := nil"
		"We could not reset to nil because some filter process of table can be spawned.
		And it will fail if initialDataSource is nil.
		Normally process should be terminated if table is closed 
		but it is not done in fast table"
		table initialDataSource: ClyDataSource empty]