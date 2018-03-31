queries
itemsWith: actualObjects

	^self 
		findAllItemsBy: [:ds | ds itemsWith: actualObjects] 
		stopLookupWhen: [:result | result size = actualObjects size]