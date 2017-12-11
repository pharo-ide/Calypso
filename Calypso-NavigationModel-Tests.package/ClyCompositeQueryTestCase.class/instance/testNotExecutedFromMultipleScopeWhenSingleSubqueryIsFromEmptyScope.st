tests
testNotExecutedFromMultipleScopeWhenSingleSubqueryIsFromEmptyScope

	query subqueries: { 
		self subqueryFromScope: ClyScopeExample empty.
	}.
	
	self deny: query isExecutedFromMultipleScope