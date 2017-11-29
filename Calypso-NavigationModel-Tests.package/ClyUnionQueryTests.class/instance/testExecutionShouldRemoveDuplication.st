tests
testExecutionShouldRemoveDuplication

	query subqueries: { 
		self subqueryInScope: ClyScopeExample of: {self class}.
		self subqueryInScope: ClyScopeExample2 of: {self class}.
	}.
	self executeQuery.
	
	self assert: resultItems asArray equals: {self class }