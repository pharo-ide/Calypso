accessing
view: aNavigationView
	view := aNavigationView.
	dataSource := view dataSource snapshotCopy.
	selection := view selection asDesiredSelection