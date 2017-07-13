copying
snapshotCopyFor: ownerDataSourceSnapshot

	| copy |
	copy := self copy.
	copy ownerDataSource: ownerDataSourceSnapshot.
	childrenDataSource ifNotNil: [ 
		copy childrenDataSource: childrenDataSource snapshotCopy].
	^copy