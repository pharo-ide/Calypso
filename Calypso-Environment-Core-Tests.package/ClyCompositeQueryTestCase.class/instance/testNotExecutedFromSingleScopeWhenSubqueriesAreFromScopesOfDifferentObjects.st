tests
testNotExecutedFromSingleScopeWhenSubqueriesAreFromScopesOfDifferentObjects

	query subqueries: { 
		self subqueryInScopeOf: { self class }.
		self subqueryInScopeOf: { self class superclass}.
	}.
	
	self deny: query isExecutedFromSingleScope.
	