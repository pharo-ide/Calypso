accessing
dataSource: aDataSource

	self changeNavigationStateBy: [ 
		self dataSource detachFromContent.	
		self setUpDataSource: aDataSource.	
		self refreshTable
	]