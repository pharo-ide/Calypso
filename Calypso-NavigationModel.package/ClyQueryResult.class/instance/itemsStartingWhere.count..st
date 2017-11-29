queries
itemsStartingWhere: blockCondition count: size

	| firstItemIndex |
	firstItemIndex := items findFirst: blockCondition.
	firstItemIndex = 0 ifTrue: [ ^#() ].
	^self itemsStartingAt: firstItemIndex count: size