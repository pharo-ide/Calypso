controlling
close
	lastFilteredDataSource ifNotNil: [ lastFilteredDataSource close ].
	
	environmentCursor detachContentFrom: self.	
	environmentCursor := ClyClosedDataSourceCursor instance