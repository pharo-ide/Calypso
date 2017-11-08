tests
testBasedOnScopeOfMultipleObjectsWhenSubqueriesAreFromScopesOfDifferentObjects

	query subqueries: { 
		self subqueryInScopeOf: { self class }.
		self subqueryInScopeOf: { self class superclass}.
	}.
	
	self assert: query isBasedOnScopeOfMultipleObjects.
	