operations
applyTo: aNavigationView

	| newDataSource |
	(aNavigationView dataSource isInSameStateAs: dataSource) ifFalse: [ 
		newDataSource := dataSource copyForBrowserStateSnapshot.
		newDataSource updateItems.
		newDataSource attachToContent.
		aNavigationView dataSource: newDataSource].
	
	selection restoreCurrentSelection: aNavigationView selection.
	aNavigationView selection ensureVisibleLastItem