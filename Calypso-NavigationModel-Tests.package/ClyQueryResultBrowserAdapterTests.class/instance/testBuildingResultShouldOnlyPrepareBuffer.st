tests
testBuildingResultShouldOnlyPrepareBuffer

	self simulateResultWith: #(1 2 3).
	
	self assert: queryResult itemBuffer equals: #(nil nil nil)