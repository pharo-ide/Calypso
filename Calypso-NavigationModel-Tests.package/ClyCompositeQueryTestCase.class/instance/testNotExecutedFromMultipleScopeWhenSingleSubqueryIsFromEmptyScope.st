tests
testNotExecutedFromMultipleScopeWhenSingleSubqueryIsFromEmptyScope

	query subqueries: { 
		self subqueryInScopeOf: {}.
	}.
	
	self deny: query isExecutedFromMultipleScope