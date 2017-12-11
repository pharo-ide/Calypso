tests
testIsExecutedFromEmptyScope

	self deny: query isExecutedFromEmptyScope.
	
	query := self queryClass with: { self subqueryFromScope: ClyScopeExample empty}.
	self assert: query isExecutedFromEmptyScope