tests
testNotExecutedFromSingleScopeWhenAllSubqueriesAreFromEmptyScope

	query subqueries: { 
		self subqueryFromScope: ClyScopeExample empty.
		self subqueryFromScope: ClyScopeExample2 empty.
	}.
	
	self deny: query isExecutedFromSingleScope