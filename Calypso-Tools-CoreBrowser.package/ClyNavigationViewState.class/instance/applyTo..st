operations
applyTo: aNavigationView

	| newDataSource |
	(aNavigationView dataSource isInSameStateAs: dataSource) ifFalse: [ 
		newDataSource := dataSource copyForBrowserStateSnapshot.
		newDataSource open.
		aNavigationView dataSource: newDataSource].
	
	selection restoreCurrentSelection: aNavigationView selection.
	aNavigationView selection ensureVisibleLastItem