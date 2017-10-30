controlling
close
	lastFilteredDataSource ifNotNil: [ lastFilteredDataSource close ].
	
	itemCursor detachContentFrom: self.	
	itemCursor := ClyClosedDataSourceCursor instance