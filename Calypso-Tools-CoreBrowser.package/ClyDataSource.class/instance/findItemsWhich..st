queries
findItemsWhich: conditionBlock

	| foundItems |
	foundItems := environmentCursor findItemsWhich: conditionBlock.

	^foundItems collect: [:each | self createElementWith: each ]