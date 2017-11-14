testing
doesItemHaveChildren: aDataSourceItem
	| query |
	aDataSourceItem childrenDataSource ifNotNil: [:children | ^children isEmpty not].
	
	self definesChildren ifFalse: [ ^false ].

	query := self queryToExpand: aDataSourceItem ifAbsent: [^false].
	
	^aDataSourceItem environmentItem hasChildrenWhich: [:childType | 
		query retrievesItemsOfType: childType ]