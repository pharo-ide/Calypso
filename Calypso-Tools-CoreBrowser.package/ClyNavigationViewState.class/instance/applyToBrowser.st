operations
applyToBrowser

	| newDataSource |
	self isCurrentDataSourceSame ifFalse: [ 
		newDataSource := dataSource snapshotCopy.
		newDataSource updateItems.
		newDataSource attachToContent.
		view dataSource: newDataSource].
	
	selection restoreCurrentSelection: view selection.
	view selection ensureVisibleLastItem