queries
itemsStartingWhere: conditionBlock count: size
	
	actualResult protectItemsWhile: [
		actualResult items doWithIndex: [ :each :i |
			 (conditionBlock value: each asCalypsoBrowserItem) 
					ifTrue: [	^self itemsStartingAt: i count: size	]]
	].

	^#()