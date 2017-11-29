controlling
expand: aDataSourceItem
	queryView changeStateBy: [
		collapsedItems remove: aDataSourceItem.
	
		self expansionChanged]