tests
testBasedOnScopeOfMultipleObjectsWhenSubqueriesAreFromDifferentScopesOfSameObject

	query subqueries: { 
		self subqueryInScope: ClyScopeExample of: { self class }.
		self subqueryInScope: ClyScopeExample2 of: { self class }.
	}.
	
	self deny: query isBasedOnScopeOfMultipleObjects