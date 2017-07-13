queries
findItemsWith: actualObjects

	| foundItems |
	foundItems := environmentCursor findItemsWith: actualObjects.

	^foundItems select: #notNil thenCollect: [:each | 
		self createElementWith: each ]