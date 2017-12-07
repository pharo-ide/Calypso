tests
testExecution
	| scope mainQuery |
	scope := ClyScopeExample
		ofAll:
			{self class superclass.
			self class}
		in: environment.
	mainQuery := ClyQueryExampleReturningScopeBasis from: scope.
	query subqueries: {mainQuery}.
	self executeQuery.
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class