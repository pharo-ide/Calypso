controlling
collapse: aDataSourceItem
	itemsView changeNavigationStateBy: [
		collapsedItems removeAllSuchThat: [ :each |
			aDataSourceItem hasChildAt: each position].
		collapsedItems add: aDataSourceItem.
	
		self expansionChanged]