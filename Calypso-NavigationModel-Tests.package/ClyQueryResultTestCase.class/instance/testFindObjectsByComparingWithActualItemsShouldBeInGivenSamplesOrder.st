tests
testFindObjectsByComparingWithActualItemsShouldBeInGivenSamplesOrder

	| indexes |
	self simulateResultWith: #(#a #b #c #d).
	
	indexes := queryResult find: #($d $b) comparingToActualItemsBy: [ :existing :sample | 
		existing first = sample]. 
	
	self assert: indexes asArray equals: #(4 2)