queries
findItemsWhere: conditionBlock

	| foundItems |
	foundItems := environmentCursor findItemsWhere: conditionBlock.

	^foundItems collect: [:each | self createElementWith: each ]