tests
testIsExecutedFromSingleScopeWhenSingleSubqueryIsBasedOnIt

	query subqueries: { 
		self subqueryInScopeOf: { self class }.
	}.
	
	self assert: query isExecutedFromSingleScope