tests
testExecution

	query subqueries: { 
		self subqueryFromScope: ClyScopeExample of: self class.
		self subqueryFromScope: ClyScopeExample2 of: self class superclass.
	}.
	self executeQuery.
	
	self assert: resultItems size equals: 2.
	self assert: resultItems asSet equals: {self class. self class superclass} asSet