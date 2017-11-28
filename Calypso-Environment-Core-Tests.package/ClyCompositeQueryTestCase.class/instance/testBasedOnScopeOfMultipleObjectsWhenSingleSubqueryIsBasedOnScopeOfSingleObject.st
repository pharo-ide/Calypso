tests
testBasedOnScopeOfMultipleObjectsWhenSingleSubqueryIsBasedOnScopeOfSingleObject

	query subqueries: { 
		self subqueryInScopeOf: { self class }.
	}.
	
	self deny: query executesFromMultipleScope