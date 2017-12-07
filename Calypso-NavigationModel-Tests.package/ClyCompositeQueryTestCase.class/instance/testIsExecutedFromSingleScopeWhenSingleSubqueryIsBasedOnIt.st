tests
testIsExecutedFromSingleScopeWhenSingleSubqueryIsBasedOnIt

	query subqueries: { 
		self subqueryFromScopeOf: self class.
	}.
	
	self assert: query isExecutedFromSingleScope