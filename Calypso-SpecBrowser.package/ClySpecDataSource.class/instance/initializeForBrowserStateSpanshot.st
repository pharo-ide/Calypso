copying
initializeForBrowserStateSpanshot
	| copy |
	tablePresenter := nil.
	queryView := nil.	
	itemCursor := ClyClosedBrowserCursor instance.	
	lastFilteredDataSource := nil.
	dirty := false.
	
	copy := expandedItems collect: [ :each | 
		each copyForBrowserStateSnapshotOf: self ].
	expandedItems := copy asSortedCollection: [ :a :b | a position < b position ]