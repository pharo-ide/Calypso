controlling
expand: aDataSourceItem
	queryView changeStateBy: [
		aDataSourceItem expandChildren.
	
		expandedItems add: aDataSourceItem.

		self expansionChanged]