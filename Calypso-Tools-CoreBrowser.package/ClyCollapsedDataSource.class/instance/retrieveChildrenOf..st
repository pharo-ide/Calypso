controlling
retrieveChildrenOf: aDataSourceItem
	| childQuery childDataSource |
	childQuery := self 
		queryToExpand: aDataSourceItem 
		ifAbsent: [self error: 'cant retrieve children from ', aDataSourceItem printString].
	
	childDataSource := ClyCollapsedDataSource on: childQuery for: itemsView.
	childDataSource childrenStructure: childrenStructure.
	childDataSource table: table.
	childDataSource open.
	^childDataSource