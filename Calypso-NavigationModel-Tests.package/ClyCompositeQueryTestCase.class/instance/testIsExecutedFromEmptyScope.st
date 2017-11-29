tests
testIsExecutedFromEmptyScope

	self deny: query isExecutedFromEmptyScope.
	
	query := self queryClass with: { self subqueryInScopeOf: #()}.
	self assert: query isExecutedFromEmptyScope