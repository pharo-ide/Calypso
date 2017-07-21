copying
initializeForBrowserStateSpanshot
	| copy |
	copy := collapsedItems collect: [ :each | 
		each copyForBrowserStateSnapshotOf: self ].
	collapsedItems := copy asSortedCollection: [ :a :b | a position < b position ].