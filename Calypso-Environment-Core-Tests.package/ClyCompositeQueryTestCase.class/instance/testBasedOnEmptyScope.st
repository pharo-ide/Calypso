tests
testBasedOnEmptyScope

	self deny: query isBasedOnEmptyScope.
	
	query := ClyCompositeQuery with: { self subqueryInScopeOf: #()}.
	self assert: query isBasedOnEmptyScope