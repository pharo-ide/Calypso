queries
findItemsSimilarTo: dataSourceItems

	| foundItems relatedItems |
	relatedItems := dataSourceItems 
		select: [ :each | each belongsToScope: metadata itemScope ]
		thenCollect: [ :each | each environmentItem ].
	foundItems := environmentCursor findItemsSimilarTo: relatedItems.

	^foundItems collect: [:each | 	self createElementWith: each  ]