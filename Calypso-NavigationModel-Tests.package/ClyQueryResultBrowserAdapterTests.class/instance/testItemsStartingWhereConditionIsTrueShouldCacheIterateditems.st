tests
testItemsStartingWhereConditionIsTrueShouldCacheIterateditems

	| iteratedItems |
	self simulateResultWith: #(#item1 #item2 #item3 #item4).
	
	iteratedItems := OrderedCollection new.
	items := queryResult 
		itemsStartingWhere: [:each | iteratedItems add: each. each actualObject = #item3 ] 
		count: 2.
	
	self assert: iteratedItems first == (queryResult itemAt: 1).
	self assert: iteratedItems second == (queryResult itemAt: 2).