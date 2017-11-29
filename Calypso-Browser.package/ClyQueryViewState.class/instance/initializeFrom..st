initialization
initializeFrom: aNavigationView
	dataSource := aNavigationView dataSource copyForBrowserStateSnapshot.
	selection := aNavigationView selection asDesiredSelection.
	selection rootDataSource: dataSource.
	selection items: (selection items collect: [ :each | each copyForBrowserStateSnapshotOf: dataSource]).