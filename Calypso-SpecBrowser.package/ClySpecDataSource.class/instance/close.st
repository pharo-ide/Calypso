controlling
close
	lastFilteredDataSource ifNotNil: [ 
		lastFilteredDataSource close].
	
	itemCursor := itemCursor close.
	
	expandedItems do: [ :each | each childrenDataSource close  ]