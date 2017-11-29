queries
newDataSourceMatching: anItemFilter
	"Any data source instance should be closed after usage.
	Problem that filtered data sources are managed out of the application, internally inside FastTable.
	So this method is supposed to be called by fast table to create filtered data source 
	which will be not shared to any other users.
	And to close retrieved data source together with original one (self) it will keep reference to it.
	And every new filter request will close existing filtered data source"
	lastFilteredDataSource ifNotNil: [lastFilteredDataSource close].
	
	lastFilteredDataSource := self class on: (query filteredBy: anItemFilter).
	lastFilteredDataSource openOn: queryView.
	^lastFilteredDataSource