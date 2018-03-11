tests
testItemsWhereConditionIsTrueShouldCacheAllItems

	| iteratedItems |
	self buildResultWith: #(#item1 #item2 #item3).
	
	iteratedItems := OrderedCollection new.
	queryResult itemsWhere: [:each | iteratedItems add: each. each actualObject = #item2].
	
	self assert: iteratedItems size equals: 3.
	self assert: iteratedItems first == (queryResult itemAt: 1).
	self assert: iteratedItems second == (queryResult itemAt: 2).
	self assert: iteratedItems last == (queryResult itemAt: 3).