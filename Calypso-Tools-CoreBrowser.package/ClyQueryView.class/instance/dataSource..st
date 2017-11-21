accessing
dataSource: aDataSource

	self changeNavigationStateBy: [ 
		self closeDataSource.	
		self setUpDataSource: aDataSource.	
		self refreshTable
	]