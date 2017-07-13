controlling
expand: aDataSourceItem
	itemsView changeNavigationStateBy: [
		aDataSourceItem expandChildren.
	
		expandedItems add: aDataSourceItem.

		self expansionChanged]