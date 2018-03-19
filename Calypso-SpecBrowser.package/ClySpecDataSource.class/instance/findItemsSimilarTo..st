queries
findItemsSimilarTo: dataSourceItems

	| foundItems relatedItems myItems childItems |
	relatedItems := dataSourceItems 
		select: [ :each | self isBasedOnQueryOf: each type ]
		thenCollect: [ :each | each browserItem ].
	foundItems := self itemCursor findItemsSimilarTo: relatedItems.

	myItems := foundItems collect: [:each | self createElementWith: each ].
	myItems size == dataSourceItems size ifTrue: [ ^myItems ].
	
	childItems := expandedItems flatCollect: [ :each | 
		each childrenDataSource findItemsSimilarTo: dataSourceItems].
	
	^myItems, childItems