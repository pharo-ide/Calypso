tests
testNotBasedOnScopeOfMultipleObjectsWhenSubqueriesFromDifferentScopesOfSameObject

	query subqueries: { 
		self subqueryInScope: ClyScopeExample of: { self class }.
		self subqueryInScope: ClyScopeExample2 of: { self class }.
	}.
	
	self assert: query isBasedOnScopeOfMultipleObjects