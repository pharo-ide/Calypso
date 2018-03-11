tests
testFindItemsSimilarToOtherItemsWhenTheyNotExist

	self buildResultWith: #(#item1 'item2' #item3 #item4).
	
	items := queryResult findItemsSimilarTo: {'unexistingItem' asCalypsoBrowserItem}.
	
	self assert: items size equals: 0