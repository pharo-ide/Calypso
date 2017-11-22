testing
countChildrenOf: aDataSourceItem
	| environmentItem |
	environmentItem := aDataSourceItem browserItem.
	
	^environmentItem localHierarchySize