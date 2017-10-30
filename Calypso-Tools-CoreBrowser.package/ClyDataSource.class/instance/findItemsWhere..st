queries
findItemsWhere: conditionBlock

	| foundItems |
	foundItems := itemCursor findItemsWhere: conditionBlock.

	^foundItems collect: [:each | self createElementWith: each ]