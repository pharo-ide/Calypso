queries
findItemsWith: actualObjects

	| myItems childItems |
	myItems := super findItemsWith: actualObjects.
	myItems size == actualObjects size ifTrue: [ ^myItems ].
	
	childItems := expandedItems flatCollect: [ :each | 
		each childrenDataSource findItemsWith: actualObjects].
	
	^myItems, childItems