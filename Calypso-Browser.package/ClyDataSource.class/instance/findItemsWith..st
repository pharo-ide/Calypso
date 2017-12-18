queries
findItemsWith: actualObjects

	| foundItems |
	foundItems := self itemCursor findItemsWith: actualObjects.

	^foundItems select: #notNil thenCollect: [:each | 
		self createElementWith: each ]