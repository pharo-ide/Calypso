queries
findItemsSimilarTo: dataSourceItems

	| foundItems relatedItems |
	relatedItems := dataSourceItems 
		select: [ :each | self isBasedOnQueryOf: each type ]
		thenCollect: [ :each | each environmentItem ].
	foundItems := environmentCursor findItemsSimilarTo: relatedItems.

	^foundItems collect: [:each | 	self createElementWith: each  ]