tests
testIsExecutedFromMultipleScopeWhenSubqueriesAreFromScopesOfDifferentObjects

	query subqueries: { 
		self subqueryFromScopeOf: self class.
		self subqueryFromScopeOf: self class superclass.
	}.
	
	self assert: query isExecutedFromMultipleScope.
	