controlling
close
	lastFilteredDataSource ifNotNil: [ lastFilteredDataSource close ].
	
	itemCursor := itemCursor close