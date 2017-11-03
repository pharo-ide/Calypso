tests
testFindItemsWhichIsNotInCache
	
	| allItems |
	self deny: (queryResult rawItems includes: Class).
	queryResult items: OrderedCollection new.
	queryResult fillWith: {Object. Class. Array }.
	
	allItems := cursor findItemsWhere: [:each | each actualObject = Class].
	
	self assert: allItems size equals: 1.
	self assert: allItems first actualObject equals: Class.
	self assert: allItems first isPrepared.
	self assert: allItems first position equals: 2.