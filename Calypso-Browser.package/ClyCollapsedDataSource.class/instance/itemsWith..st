queries
itemsWith: actualObjects

	| myItems childItems |
	myItems := super itemsWith: actualObjects.
	myItems size == actualObjects size ifTrue: [ ^myItems ].
	
	childItems := expandedItems flatCollect: [ :each | 
		each childrenDataSource itemsWith: actualObjects].
	
	^myItems, childItems