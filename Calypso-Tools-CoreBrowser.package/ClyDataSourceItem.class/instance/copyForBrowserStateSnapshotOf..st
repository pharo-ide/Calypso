copying
copyForBrowserStateSnapshotOf: rootDataSourceSnapshot
	| copy ownerDataSourceSnapshot |
	ownerDataSourceSnapshot := rootDataSourceSnapshot 
		findDataSourceSameAs: ownerDataSource 
		ifNone: [ self error: 'should not happen' ].	
	copy := self copy.
	copy ownerDataSource: ownerDataSourceSnapshot.
	childrenDataSource ifNotNil: [ 
		copy childrenDataSource: childrenDataSource copyForBrowserStateSnapshot].
	^copy