controlling
retrieveChildrenOf: aDataSourceItem
	| childQuery childDataSource |
	childQuery := queryView 
		queryToExpand: aDataSourceItem 
		ifAbsent: [self error: 'cant retrieve children from ', aDataSourceItem printString].
	
	childDataSource := ClyCollapsedDataSource on: childQuery.
	childDataSource openOn: queryView.
	^childDataSource