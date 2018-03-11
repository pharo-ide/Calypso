tests
testGettingItemAtIndexShouldCacheIt

	| actual actual2 |
	self buildResultWith: #(#item1 #item2 #item3).
	
	actual := queryResult itemAt: 2.
	actual2 := queryResult itemAt: 2.
	self assert: actual == actual2