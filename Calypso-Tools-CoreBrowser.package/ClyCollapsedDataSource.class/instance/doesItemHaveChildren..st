testing
doesItemHaveChildren: aDataSourceItem
	| childQuery |
	aDataSourceItem childrenDataSource ifNotNil: [:children | ^children isEmpty not].
	
	self definesChildren ifFalse: [ ^false ].

	childQuery := queryView queryToExpand: aDataSourceItem ifAbsent: [^false].
	
	^aDataSourceItem browserItem hasChildrenWhich: [:childType | 
		childQuery retrievesItemsOfType: childType ]