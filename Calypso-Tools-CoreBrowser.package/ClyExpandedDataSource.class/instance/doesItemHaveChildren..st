testing
doesItemHaveChildren: aDataSourceItem
	| environmentItem |
	environmentItem := aDataSourceItem browserItem.
	
	^environmentItem localHierarchySize > 0