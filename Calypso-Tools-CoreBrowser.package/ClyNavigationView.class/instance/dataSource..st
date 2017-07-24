accessing
dataSource: aDataSource

	self changeNavigationStateBy: [ 
		self dataSource close.	
		self setUpDataSource: aDataSource.	
		self refreshTable
	]