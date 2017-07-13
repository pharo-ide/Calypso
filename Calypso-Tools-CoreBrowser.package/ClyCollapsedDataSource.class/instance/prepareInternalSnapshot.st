copying
prepareInternalSnapshot
	| copy |
	copy := expandedItems collect: [ :each | each snapshotCopyFor: self ].
	expandedItems := copy asSortedCollection: [ :a :b | a position < b position ].