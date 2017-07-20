operations
applyTo: aNavigationView

	| newDataSource |
	(aNavigationView dataSource isInSameStateAs: dataSource) ifFalse: [ 
		newDataSource := dataSource snapshotCopy.
		newDataSource updateItems.
		newDataSource attachToContent.
		aNavigationView dataSource: newDataSource].
	
	selection restoreCurrentSelection: aNavigationView selection.
	aNavigationView selection ensureVisibleLastItem