tests
testFindActualItemsShouldNotGenerateBrowserItems

	self simulateResultWith: #(#item1 #item2).
	
	queryResult itemsWith: #(#someItem).
	
	self assert: queryResult itemBuffer equals: #(nil nil)