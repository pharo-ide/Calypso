queries
itemsStartingWhere: conditionBlock count: size

	| firstItemIndex |
	firstItemIndex := items findFirst: conditionBlock.
	firstItemIndex = 0 ifTrue: [ ^#() ].
	^self itemsStartingAt: firstItemIndex count: size