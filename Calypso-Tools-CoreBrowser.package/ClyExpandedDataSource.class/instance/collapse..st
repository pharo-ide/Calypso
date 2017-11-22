controlling
collapse: aDataSourceItem
	queryView changeStateBy: [
		collapsedItems removeAllSuchThat: [ :each |
			aDataSourceItem hasChildAt: each position].
		collapsedItems add: aDataSourceItem.
	
		self expansionChanged]