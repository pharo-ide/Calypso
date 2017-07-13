controlling
retrieveChildrenOf: aDataSourceItem
	| childrenContent children childrenCursor dataSourceClass childScope |
	childrenContent := self 
		queryToExpand: aDataSourceItem 
		ifAbsent: [self error: 'cant retrieve children from ', aDataSourceItem printString].
	
	childScope := aDataSourceItem environmentScope basis: { aDataSourceItem actualObject }.
	childrenCursor := environmentCursor query: childrenContent inNewScope: childScope.	
		
	dataSourceClass := (childrenStructure size = 1 and: [ childrenContent isExpandedHierarchy])
		ifTrue: [ ClyExpandedDataSource] ifFalse: [ ClyCollapsedDataSource ].		
	children := dataSourceClass for: itemsView on: childrenCursor.
	children table: table.
	children childrenStructure: childrenStructure.
	^children