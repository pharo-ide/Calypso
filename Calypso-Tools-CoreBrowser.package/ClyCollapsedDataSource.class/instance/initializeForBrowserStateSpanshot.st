copying
initializeForBrowserStateSpanshot
	| copy |
	super initializeForBrowserStateSpanshot.
	
	copy := expandedItems collect: [ :each | 
		each copyForBrowserStateSnapshotOf: self ].
	expandedItems := copy asSortedCollection: [ :a :b | a position < b position ]