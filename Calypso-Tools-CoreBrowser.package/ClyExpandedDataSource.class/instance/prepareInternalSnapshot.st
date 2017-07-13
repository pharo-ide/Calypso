copying
prepareInternalSnapshot
	| copy |
	copy := collapsedItems collect: [ :each | each snapshotCopyFor: self ].
	collapsedItems := copy asSortedCollection: [ :a :b | a position < b position ].