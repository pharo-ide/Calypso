accessing
snapshotState
	
	| dataSourceSnapshot |
	dataSourceSnapshot := selection rootDataSource copyForBrowserStateSnapshot.
	
	^ClyQueryViewState new 
		dataSource: dataSourceSnapshot;
		selection: (selection copyForBrowserStateSnapshotOf: dataSourceSnapshot)