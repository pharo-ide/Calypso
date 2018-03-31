tests
testFindAbsentObjectsByComparingWithActualItems

	| indexes |
	self simulateResultWith: #(#a #b #c).
	
	indexes := queryResult find: #($d $a) comparingToActualItemsBy: [ :existing :sample | 
		existing first = sample]. 
 
	self assert: indexes asArray equals: #(nil 1)