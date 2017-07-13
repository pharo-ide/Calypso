testing
doesItemHaveChildren: aDataSourceItem
	| environmentItem |
	environmentItem := aDataSourceItem environmentItem.
	
	^environmentItem localHierarchySize > 0