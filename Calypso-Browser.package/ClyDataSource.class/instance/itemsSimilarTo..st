queries
itemsSimilarTo: dataSourceItems

	| foundItems relatedItems |
	relatedItems := dataSourceItems 
		select: [ :each | self isBasedOnQueryOf: each type ]
		thenCollect: [ :each | each browserItem ].
	foundItems := self itemCursor itemsSimilarTo: relatedItems.

	^foundItems collect: [:each | 	self createElementWith: each  ]