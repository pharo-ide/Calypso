tests
testNotExecutedFromSingleScopeWhenSubqueriesAreFromScopesOfDifferentObjects

	query subqueries: { 
		self subqueryFromScopeOf: self class.
		self subqueryFromScopeOf: self class superclass.
	}.
	
	self deny: query isExecutedFromSingleScope.
	