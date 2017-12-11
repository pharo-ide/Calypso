tests
testExecution
	
	self executeQuery.
	
	self assert: foundSelectors equals: #(methodWithHalt methodWithHalt2)