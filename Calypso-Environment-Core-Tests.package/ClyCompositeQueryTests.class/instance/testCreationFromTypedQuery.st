tests
testCreationFromTypedQuery

	| subquery1 subquery2 |
	subquery1 := self subqueryInScopeOf: { Array }.
	subquery2 := self subqueryInScopeOf: { String }.
	
	query := subquery1, subquery2.
	
	self assert: query class equals: ClyCompositeQuery.
	self assert: query subqueries equals: {subquery1. subquery2}.