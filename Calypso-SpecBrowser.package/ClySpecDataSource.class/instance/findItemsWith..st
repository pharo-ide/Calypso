queries
findItemsWith: actualObjects

	| foundItems myItems childItems |
	foundItems := self itemCursor findItemsWith: actualObjects.

	myItems := foundItems select: #notNil thenCollect: [:each | 
		self createElementWith: each ].	
	myItems size == actualObjects size ifTrue: [ ^myItems ].
	
	childItems := expandedItems flatCollect: [ :each | 
		each childrenDataSource findItemsWith: actualObjects].
	
	^myItems, childItems