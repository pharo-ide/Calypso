controlling
collapse: aDataSourceItem
	itemsView changeNavigationStateBy: [ 
		expandedItems remove: aDataSourceItem.
		aDataSourceItem childrenDataSource close.	

		self expansionChanged]