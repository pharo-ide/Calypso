tests
testNotExecutedFromSingleScopeWhenAllSubqueriesAreFromEmptyScope

	query subqueries: { 
		self subqueryInScope: ClyScopeExample of: {}.
		self subqueryInScope: ClyScopeExample2 of: {}.
	}.
	
	self deny: query isExecutedFromSingleScope