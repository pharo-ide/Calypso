accessing
countChildrenOf: aDataSourceItem
	aDataSourceItem childrenDataSource ifNotNil: [:children | ^children numberOfRows].
	
	self definesChildren ifFalse: [ ^0 ].

	self error: 'should not happen'