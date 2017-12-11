tests
testNotExecutedFromMultipleScopeWhenSubqueriesAreFromDifferentScopesOfSameObject

	query subqueries: { 
		self subqueryFromScope: ClyScopeExample of: self class.
		self subqueryFromScope: ClyScopeExample2 of: self class.
	}.
	
	self deny: query isExecutedFromMultipleScope