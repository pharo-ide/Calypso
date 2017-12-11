controlling
updateItemsWhichBelongsTo: aDataSource
	| relatedItems actualSelectionChanged |
	relatedItems := items select: [ :each | each belongsToDataSource: aDataSource].
	aDataSource updateItems: relatedItems.
	
	actualSelectionChanged := relatedItems anySatisfy: #isRemoved.
	
	self restoreTableSelectionSilently: actualSelectionChanged not.
	
	^actualSelectionChanged 