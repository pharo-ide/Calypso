context
createContextOfSingleItem: aDataSourceItem
	^aDataSourceItem environmentScope 
		processBrowserContextClass of: {aDataSourceItem} for: self