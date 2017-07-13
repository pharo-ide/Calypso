testing
doesItemHaveChildren: aDataSourceItem
	| childQuery |
	aDataSourceItem childrenDataSource ifNotNil: [:children | ^children isEmpty not].
	
	self definesChildren ifFalse: [ ^false ].

	childQuery := self queryToExpand: aDataSourceItem ifAbsent: [^false].
	
	^aDataSourceItem environmentItem hasChildrenOf: childQuery itemScope