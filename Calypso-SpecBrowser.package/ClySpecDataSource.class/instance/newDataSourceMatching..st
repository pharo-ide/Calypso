queries
newDataSourceMatching: anItemFilter
	"IMPORTANT: DO NOT CALL IT FROM THE UI PROCESS"
	"Any data source instance should be closed after usage.
	Problem that filtered data sources are managed out of the application, internally inside FastTable.
	So this method is supposed to be called by fast table to create filtered data source 
	which will be not shared to any other users.
	And to close retrieved data source together with original one (self) it will keep reference to it.
	And every new filter request will close existing filtered data source"
	lastFilteredDataSource ifNotNil: [lastFilteredDataSource close].
	self isClosed ifTrue: [
		"This is hackish solution to the current fast table problem with filter process.
		Filter process is not managed by anybody 
		and will continue work after table is removed from the world"
		(Processor activeProcess == UIManager default uiProcess) ifTrue: [ 
			self error: 'Should not happens'].
		^Processor terminateActive].
	lastFilteredDataSource := self class on: (query filteredBy: anItemFilter).
	lastFilteredDataSource openOn: queryView.
	^lastFilteredDataSource