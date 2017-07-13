queries
resolveItemsStartingWhere: blockCondition count: size

	| firstItemIndex |
	firstItemIndex := items findFirst: blockCondition.
	firstItemIndex = 0 ifTrue: [ ^#() ].
	^self resolveItemsStartingAt: firstItemIndex count: size