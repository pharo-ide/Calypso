tests
testIsExecutedFromMultipleScopeWhenSingleSubqueryIsBasedOnIt

	query subqueries: { 
		self subqueryFromScope: (ClyScopeExample ofAll: { self class. self class superclass}).
	}.
	
	self assert: query isExecutedFromMultipleScope