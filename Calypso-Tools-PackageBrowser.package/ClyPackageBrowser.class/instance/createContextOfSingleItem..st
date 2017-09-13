context
createContextOfSingleItem: aDataSourceItem
	^aDataSourceItem environmentScope 
		systemBrowserContextClass of: {aDataSourceItem} for: self