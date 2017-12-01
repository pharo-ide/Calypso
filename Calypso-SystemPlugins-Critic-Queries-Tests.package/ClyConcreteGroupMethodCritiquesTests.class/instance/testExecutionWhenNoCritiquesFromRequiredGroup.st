tests
testExecutionWhenNoCritiquesFromRequiredGroup

	query groupName: 'wrong group'.
	
	self executeQuery.
	
	self assert: resultItems isEmpty