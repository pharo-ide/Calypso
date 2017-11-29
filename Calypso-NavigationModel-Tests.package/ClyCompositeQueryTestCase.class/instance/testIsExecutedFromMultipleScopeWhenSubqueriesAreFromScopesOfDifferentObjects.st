tests
testIsExecutedFromMultipleScopeWhenSubqueriesAreFromScopesOfDifferentObjects

	query subqueries: { 
		self subqueryInScopeOf: { self class }.
		self subqueryInScopeOf: { self class superclass}.
	}.
	
	self assert: query isExecutedFromMultipleScope.
	