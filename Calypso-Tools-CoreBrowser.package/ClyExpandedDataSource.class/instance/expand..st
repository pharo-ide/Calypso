controlling
expand: aDataSourceItem
	itemsView changeStateBy: [
		collapsedItems remove: aDataSourceItem.
	
		self expansionChanged]