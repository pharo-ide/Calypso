tests
testExecution

	self executeQuery.
	
	self assert: resultItems asArray equals: query resultItems