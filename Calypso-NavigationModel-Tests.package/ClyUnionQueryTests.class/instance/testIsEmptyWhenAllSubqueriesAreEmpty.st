tests
testIsEmptyWhenAllSubqueriesAreEmpty
	query subqueries: {
		(self subqueryFromScope: ClyScopeExample empty).
		(self subqueryFromScope: ClyScopeExample2 empty)
	}.
	
	self assert: query checkEmptyResult