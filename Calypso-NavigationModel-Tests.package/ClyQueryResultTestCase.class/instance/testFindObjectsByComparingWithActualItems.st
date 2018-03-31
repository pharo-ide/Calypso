tests
testFindObjectsByComparingWithActualItems

	| indexes |
	self simulateResultWith: #(#a #b #c #d).
	
	indexes := queryResult find: #($b $d) comparingToActualItemsBy: [ :existing :sample | 
		existing first = sample]. 
	
	self assert: indexes asArray equals: #(2 4)