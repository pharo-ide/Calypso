queries
findItemsSimilarTo: dataSourceItems

	| foundItems relatedItems |
	relatedItems := dataSourceItems 
		select: [ :each | each belongsToScope: environmentCursor observedItemScope ]
		thenCollect: [ :each | each environmentItem ].
	foundItems := environmentCursor findItemsSimilarTo: relatedItems.

	^foundItems collect: [:each | 	self createElementWith: each  ]