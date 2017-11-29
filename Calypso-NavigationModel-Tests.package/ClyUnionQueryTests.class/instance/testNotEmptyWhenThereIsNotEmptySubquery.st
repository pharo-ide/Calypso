tests
testNotEmptyWhenThereIsNotEmptySubquery
	query subqueries: {
		(self subqueryInScope: ClyScopeExample of: {}).
		(self subqueryInScope: ClyScopeExample2 of: {self class superclass})
	}.
	
	self deny: query checkEmptyResult