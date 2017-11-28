tests
testBasedOnEmptyScope

	self deny: query executesFromEmptyScope.
	
	query := self queryClass with: { self subqueryInScopeOf: #()}.
	self assert: query executesFromEmptyScope