queries
findItemsWith: actualObjects

	^self 
		findAllItemsBy: [:ds | ds findItemsWith: actualObjects] 
		stopLookupWhen: [:result | result size = actualObjects size]