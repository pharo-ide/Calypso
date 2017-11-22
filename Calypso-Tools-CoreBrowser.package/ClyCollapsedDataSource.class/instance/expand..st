controlling
expand: aDataSourceItem
	itemsView changeStateBy: [
		aDataSourceItem expandChildren.
	
		expandedItems add: aDataSourceItem.

		self expansionChanged]