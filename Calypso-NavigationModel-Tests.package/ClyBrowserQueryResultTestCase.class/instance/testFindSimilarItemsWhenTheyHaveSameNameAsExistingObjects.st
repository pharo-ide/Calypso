tests
testFindSimilarItemsWhenTheyHaveSameNameAsExistingObjects

	self simulateResultWith: #(#item1 'item2' #item3 #item4).
	
	items := queryResult itemsSimilarTo: {'item2' copy asCalypsoBrowserItem}.
	
	self assert: items size equals: 1.
	self assert: items first == (queryResult itemAt: 2).
	self assert: items first actualObject equals: #item2.
	self assert: items first position equals: 2