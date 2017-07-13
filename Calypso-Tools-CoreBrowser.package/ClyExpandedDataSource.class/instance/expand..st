controlling
expand: aDataSourceItem
	itemsView changeNavigationStateBy: [
		collapsedItems remove: aDataSourceItem.
	
		self expansionChanged]