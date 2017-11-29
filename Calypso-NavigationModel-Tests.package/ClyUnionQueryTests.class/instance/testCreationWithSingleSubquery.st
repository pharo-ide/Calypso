tests
testCreationWithSingleSubquery

	| subquery |
	subquery := self subqueryInScopeOf: { Array }.

	query := ClyUnionQuery with: {subquery}.
	
	self assert: query equals: subquery.
	self deny: query == subquery