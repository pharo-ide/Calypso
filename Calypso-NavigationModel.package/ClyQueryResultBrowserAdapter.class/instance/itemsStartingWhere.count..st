queries
itemsStartingWhere: blockCondition count: size
	
	actualResult protectItemsWhile: [
		actualResult items doWithIndex: [ :each :i |
			 (blockCondition value: each asCalypsoBrowserItem) 
					ifTrue: [	^self itemsStartingAt: i count: size	]]
	].

	^#()