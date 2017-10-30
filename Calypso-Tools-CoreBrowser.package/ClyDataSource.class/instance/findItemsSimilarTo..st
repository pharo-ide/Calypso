queries
findItemsSimilarTo: dataSourceItems

	| foundItems relatedItems |
	relatedItems := dataSourceItems 
		select: [ :each | self isBasedOnQueryOf: each type ]
		thenCollect: [ :each | each environmentItem ].
	foundItems := itemCursor findItemsSimilarTo: relatedItems.

	^foundItems collect: [:each | 	self createElementWith: each  ]