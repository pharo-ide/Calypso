queries
itemsSimilarTo: dataSourceItems

	| myItems childItems |
	myItems := super itemsSimilarTo: dataSourceItems.
	myItems size == dataSourceItems size ifTrue: [ ^myItems ].
	
	childItems := expandedItems flatCollect: [ :each | 
		each childrenDataSource itemsSimilarTo: dataSourceItems].
	
	^myItems, childItems