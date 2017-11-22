operations
applyTo: aQueryView

	| newDataSource |
	(aQueryView dataSource isInSameStateAs: dataSource) ifFalse: [ 
		newDataSource := dataSource copyForBrowserStateSnapshot.
		aQueryView dataSource: newDataSource].
	
	selection restoreCurrentSelection: aQueryView selection.
	aQueryView selection ensureVisibleLastItem