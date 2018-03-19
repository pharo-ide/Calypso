controlling
collapse: aDataSourceItem
	queryView changeStateBy: [ 
		expandedItems remove: aDataSourceItem.
		aDataSourceItem childrenDataSource close.	

		self expansionChanged]