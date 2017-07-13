queries
newDataSourceMatching: anItemFilter
	
	| filteredContentCursor |
	filteredContentCursor := environmentCursor filterItemsBy: anItemFilter.
	
	^self createSameOn: filteredContentCursor