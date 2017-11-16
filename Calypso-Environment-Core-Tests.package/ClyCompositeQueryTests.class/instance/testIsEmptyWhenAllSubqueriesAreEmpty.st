tests
testIsEmptyWhenAllSubqueriesAreEmpty

	query subqueries: { 
		self subqueryInScope: ClyScopeExample of: {}.
		self subqueryInScope: ClyScopeExample2 of: {}.
	}.
	
	self assert: (query isEmptyIn: environment)