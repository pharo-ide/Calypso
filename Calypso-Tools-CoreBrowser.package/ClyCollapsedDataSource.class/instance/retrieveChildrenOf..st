controlling
retrieveChildrenOf: aDataSourceItem
	| childrenQuery children queryResult dataSourceClass childScope |
	childrenQuery := self 
		queryToExpand: aDataSourceItem 
		ifAbsent: [self error: 'cant retrieve children from ', aDataSourceItem printString].
	
	childScope := ClyEnvironmentScope of: { aDataSourceItem actualObject }.
	queryResult := itemCursor query: childrenQuery inNewScope: childScope.	
		
	dataSourceClass := (childrenStructure size = 1 and: [ childrenQuery isExpandedHierarchy])
		ifTrue: [ ClyExpandedDataSource] ifFalse: [ ClyCollapsedDataSource ].		
	children := dataSourceClass for: itemsView on: queryResult.
	children table: table.
	children childrenStructure: childrenStructure.
	^children