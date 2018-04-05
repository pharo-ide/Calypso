running
simulateResultWith: actualItems

	| browserItems |
	browserItems := actualItems collect: [:each | each asCalypsoBrowserItem].
	
	super simulateResultWith: browserItems.
	
	queryResult buildIndexes.