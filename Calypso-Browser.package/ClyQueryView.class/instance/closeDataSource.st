controlling
closeDataSource
	 
	table initialDataSource ifNil: [ ^self dataSource close ].	
	
	"In filter mode initial data source is the main original data source. 
	It manages filtered data source by itself.
	So we do not need to close it manually"	
	table cleanupFilter.
	table initialDataSource close.		
	"We could not reset to nil because some filter process of table can be spawned.
	And it will fail if initialDataSource is nil.
	Normally process should be terminated if table is closed 
	but it is not done in fast table"