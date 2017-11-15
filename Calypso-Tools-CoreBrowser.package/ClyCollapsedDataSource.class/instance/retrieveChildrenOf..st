controlling
retrieveChildrenOf: aDataSourceItem
	| query children queryResult |
	query := self 
		queryToExpand: aDataSourceItem 
		ifAbsent: [self error: 'cant retrieve children from ', aDataSourceItem printString].
	
	queryResult := itemCursor query: query.		
	children := ClyCollapsedDataSource for: itemsView on: queryResult.
	children childrenStructure: childrenStructure.
	children table: table.
	^children