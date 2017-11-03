controlling
retrieveChildrenOf: aDataSourceItem
	| scopeAndQuery children queryResult childScope |
	scopeAndQuery := self 
		queryToExpand: aDataSourceItem 
		ifAbsent: [self error: 'cant retrieve children from ', aDataSourceItem printString].
	
	childScope := scopeAndQuery first of: { aDataSourceItem actualObject }.
	queryResult := itemCursor query: scopeAndQuery last inNewScope: childScope.	
	
	children := ClyCollapsedDataSource for: itemsView on: queryResult.
	children table: table.
	children childrenStructure: childrenStructure.
	^children