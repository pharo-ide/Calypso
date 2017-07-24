controlling
closeDataSource
	self dataSource ifNotNil: [ :ds | ds close ]