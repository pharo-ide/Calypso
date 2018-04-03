running
simulateResultWith: actualItems

	| browserItems |
	browserItems := actualItems collect: [:each | ClyBrowserItem with: each].
	
	super simulateResultWith: browserItems.
	
	queryResult buildIndexes.