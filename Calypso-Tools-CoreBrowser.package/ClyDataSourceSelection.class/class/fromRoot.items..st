instance creation
fromRoot: aDataSource items: dataSourceItems
	^self new 
		rootDataSource: aDataSource;
		items: dataSourceItems