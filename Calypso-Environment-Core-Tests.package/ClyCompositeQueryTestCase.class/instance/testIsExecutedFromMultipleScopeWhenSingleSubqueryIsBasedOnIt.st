tests
testIsExecutedFromMultipleScopeWhenSingleSubqueryIsBasedOnIt

	query subqueries: { 
		self subqueryInScopeOf: { self class. self class superclass }.
	}.
	
	self assert: query isExecutedFromMultipleScope