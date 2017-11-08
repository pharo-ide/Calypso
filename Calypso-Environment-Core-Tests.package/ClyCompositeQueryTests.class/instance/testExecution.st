tests
testExecution

	query subqueries: { 
		self subqueryInScope: ClyScopeExample of: {self class}.
		self subqueryInScope: ClyScopeExample2 of: {self class superclass}.
	}.
	
	result := environment query: query.
	resultItems := result items.
	
	self assert: resultItems size equals: 2.
	self assert: resultItems asSet equals: {self class. self class superclass} asSet