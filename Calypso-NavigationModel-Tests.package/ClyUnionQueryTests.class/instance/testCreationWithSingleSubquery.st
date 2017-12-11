tests
testCreationWithSingleSubquery

	| subquery |
	subquery := self subqueryFromScopeOf: Array.

	query := ClyUnionQuery with: {subquery}.
	
	self assert: query equals: subquery.
	self deny: query == subquery