testing
doesItemHaveChildren: aDataSourceItem
	| scopeAndQuery |
	aDataSourceItem childrenDataSource ifNotNil: [:children | ^children isEmpty not].
	
	self definesChildren ifFalse: [ ^false ].

	scopeAndQuery := self queryToExpand: aDataSourceItem ifAbsent: [^false].
	
	^aDataSourceItem environmentItem hasChildrenWhich: [:childType | 
		scopeAndQuery last retrievesItemsOfType: childType ]