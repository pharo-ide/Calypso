queries
itemsWith: actualObjects

	| foundItems |
	foundItems := self itemCursor itemsWith: actualObjects.

	^foundItems select: #notNil thenCollect: [:each | 
		self createElementWith: each ]