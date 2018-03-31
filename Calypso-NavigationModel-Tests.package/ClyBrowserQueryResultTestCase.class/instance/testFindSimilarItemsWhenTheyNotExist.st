tests
testFindSimilarItemsWhenTheyNotExist

	self simulateResultWith: #(#item1 'item2' #item3 #item4).
	
	items := queryResult itemsSimilarTo: {'unexistingItem' asCalypsoBrowserItem}.
	
	self assert: items size equals: 0