controlling
retrieveChildrenOf: aDataSourceItem
	| childQuery childDataSource |
	childQuery := self 
		queryToExpand: aDataSourceItem 
		ifAbsent: [self error: 'cant retrieve children from ', aDataSourceItem printString].
	
	childDataSource := ClyCollapsedDataSource on: childQuery.
	childDataSource childrenStructure: childrenStructure.
	childDataSource openOn: itemsView.
	^childDataSource