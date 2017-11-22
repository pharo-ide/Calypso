controlling
collapse: aDataSourceItem
	itemsView changeStateBy: [ 
		expandedItems remove: aDataSourceItem.
		aDataSourceItem childrenDataSource close.	

		self expansionChanged]