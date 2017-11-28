tests
testBasedOnScopeOfMultipleObjectsWhenSingleSubqueryIsFromEmptyScope

	query subqueries: { 
		self subqueryInScopeOf: {}.
	}.
	
	self deny: query executesFromMultipleScope