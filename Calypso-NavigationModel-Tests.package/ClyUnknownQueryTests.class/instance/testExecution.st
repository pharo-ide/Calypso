tests
testExecution
	self executeQuery.
	
	self assert: result == ClyUnknownQueryResult instance.
	self assert: resultItems = #()