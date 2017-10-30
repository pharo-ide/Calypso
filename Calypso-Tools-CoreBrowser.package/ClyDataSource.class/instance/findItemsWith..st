queries
findItemsWith: actualObjects

	| foundItems |
	foundItems := itemCursor findItemsWith: actualObjects.

	^foundItems select: #notNil thenCollect: [:each | 
		self createElementWith: each ]