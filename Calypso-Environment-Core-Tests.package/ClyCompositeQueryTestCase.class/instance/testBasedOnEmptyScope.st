tests
testBasedOnEmptyScope

	self deny: query isBasedOnEmptyScope.
	
	query := self queryClass with: { self subqueryInScopeOf: #()}.
	self assert: query isBasedOnEmptyScope