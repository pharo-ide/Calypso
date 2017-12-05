initialization
initializeFrom: aQueryView
	dataSource := aQueryView dataSource copyForBrowserStateSnapshot.
	selection := aQueryView selection asDesiredSelection.
	selection rootDataSource: dataSource.
	selection items: (selection items collect: [ :each | each copyForBrowserStateSnapshotOf: dataSource]).