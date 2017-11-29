accessing
dataSource: aDataSource

	self changeStateBy: [ 
		self closeDataSource.	
		self setUpDataSource: aDataSource.	
		self refreshTable
	]