tests
testFindItemsUsingPredicateBlock
	
	| allItems |
	allItems := cursor findItemsWhere: [:each | each actualObject = Array].
	
	self assert: allItems size equals: 1.
	self assert: allItems first actualObject equals: Array.
	self assert: allItems first isPrepared.
	self assert: allItems first position equals: (queryResult rawItems indexOf: Array).