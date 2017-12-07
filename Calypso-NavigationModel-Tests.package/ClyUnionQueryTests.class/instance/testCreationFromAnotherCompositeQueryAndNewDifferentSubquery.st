tests
testCreationFromAnotherCompositeQueryAndNewDifferentSubquery

	| subquery1 subquery2 subquery3 |
	subquery1 := self subqueryFromScope: ClyScopeExample of: Array.
	subquery2 := self subqueryFromScope: ClyScopeExample2 of: String.
	subquery3 := ClyQueryExampleReturningScopeBasis2 from: ClyScopeExample of: Object in: environment.
	
	query := subquery1, subquery2, subquery3.
	
	self assert: query class equals: ClyUnionQuery.
	self assert: query subqueries equals: {subquery1. subquery2. subquery3} asSet.
	self assert: query requiredResult equals: subquery1 requiredResult