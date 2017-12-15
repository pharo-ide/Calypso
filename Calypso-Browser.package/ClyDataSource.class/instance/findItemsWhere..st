queries
findItemsWhere: conditionBlock

	| foundItems |
	foundItems := self itemCursor findItemsWhere: conditionBlock.

	^foundItems collect: [:each | self createElementWith: each ]