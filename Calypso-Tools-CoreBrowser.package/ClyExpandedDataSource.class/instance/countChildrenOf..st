testing
countChildrenOf: aDataSourceItem
	| environmentItem |
	environmentItem := aDataSourceItem environmentItem.
	
	^environmentItem localHierarchySize