controlling
collapse: aDataSourceItem
	itemsView changeNavigationStateBy: [ 
		expandedItems remove: aDataSourceItem.
		aDataSourceItem childrenDataSource detachFromContent.	

		self expansionChanged]