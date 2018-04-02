tests
testFindSimilarItemsShouldNotGenerateBrowserItems

	self simulateResultWith: #(#item1 #item2).
	
	queryResult itemsSimilarTo: {#someItem asCalypsoBrowserItem}.
	
	self assert: queryResult itemBuffer equals: #(nil nil)