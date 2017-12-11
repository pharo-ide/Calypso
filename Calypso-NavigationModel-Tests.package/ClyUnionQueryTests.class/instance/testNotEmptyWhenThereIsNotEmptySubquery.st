tests
testNotEmptyWhenThereIsNotEmptySubquery
	query subqueries: {
		(self subqueryFromScope: ClyScopeExample empty).
		(self subqueryFromScope: ClyScopeExample2 of: self class superclass)
	}.
	
	self deny: query checkEmptyResult