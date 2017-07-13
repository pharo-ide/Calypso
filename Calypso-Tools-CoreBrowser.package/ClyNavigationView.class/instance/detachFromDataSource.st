controlling
detachFromDataSource
	self dataSource ifNotNil: [ :ds | ds detachFromContent ]