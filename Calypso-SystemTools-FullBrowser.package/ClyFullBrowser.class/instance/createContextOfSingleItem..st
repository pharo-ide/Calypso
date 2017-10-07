context
createContextOfSingleItem: aDataSourceItem
	^aDataSourceItem environmentScope 
		fullBrowserContextClass of: {aDataSourceItem} for: self