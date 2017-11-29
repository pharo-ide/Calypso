tests
testNotExecutedFromMultipleScopeWhenSingleSubqueryIsBasedOnScopeOfSingleObject

	query subqueries: { 
		self subqueryInScopeOf: { self class }.
	}.
	
	self deny: query isExecutedFromMultipleScope