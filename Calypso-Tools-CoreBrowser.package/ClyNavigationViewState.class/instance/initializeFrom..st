initialization
initializeFrom: aNavigationView
	dataSource := aNavigationView dataSource snapshotCopy.
	selection := aNavigationView selection asDesiredSelection