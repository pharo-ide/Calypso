tests
testNotExecutedFromMultipleScopeWhenSingleSubqueryIsBasedOnScopeOfSingleObject

	query subqueries: { 
		self subqueryFromScopeOf: self class.
	}.
	
	self deny: query isExecutedFromMultipleScope