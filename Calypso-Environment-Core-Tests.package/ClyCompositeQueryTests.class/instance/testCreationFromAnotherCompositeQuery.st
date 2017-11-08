tests
testCreationFromAnotherCompositeQuery

	| subquery1 subquery2 subquery3 |
	subquery1 := self subqueryInScopeOf: { Array }.
	subquery2 := self subqueryInScopeOf: { String }.
	subquery3 := self subqueryInScopeOf: { Class }.
	
	query := subquery1, subquery2, subquery3.
	
	self assert: query class equals: ClyCompositeQuery.
	self assert: query subqueries equals: {subquery1. subquery2. subquery3}.