queries
itemsStartingWhere: conditionBlock count: size

	| firstItemIndex |
	^self protectItemsWhile: [ 
		firstItemIndex := items findFirst: conditionBlock.
		firstItemIndex = 0 
			ifTrue: [ #() ]
			ifFalse: [ self itemsStartingAt: firstItemIndex count: size]]