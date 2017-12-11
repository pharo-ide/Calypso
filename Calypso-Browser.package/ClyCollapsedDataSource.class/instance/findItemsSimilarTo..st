queries
findItemsSimilarTo: dataSourceItems

	| myItems childItems |
	myItems := super findItemsSimilarTo: dataSourceItems.
	myItems size == dataSourceItems size ifTrue: [ ^myItems ].
	
	childItems := expandedItems flatCollect: [ :each | 
		each childrenDataSource findItemsSimilarTo: dataSourceItems].
	
	^myItems, childItems