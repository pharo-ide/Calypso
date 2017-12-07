tests
testNotExecutedFromMultipleScopeWhenAllSubqueriesAreFromEmptyScope

	query subqueries: { 
		self subqueryFromScope: ClyScopeExample empty.
		self subqueryFromScope: ClyScopeExample2 empty.
	}.
	
	self deny: query isExecutedFromMultipleScope