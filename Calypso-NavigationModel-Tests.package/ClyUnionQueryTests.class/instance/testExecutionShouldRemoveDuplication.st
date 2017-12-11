tests
testExecutionShouldRemoveDuplication

	query subqueries: { 
		self subqueryFromScope: ClyScopeExample of: self class.
		self subqueryFromScope: ClyScopeExample2 of: self class.
	}.
	self executeQuery.
	
	self assert: resultItems asArray equals: {self class }