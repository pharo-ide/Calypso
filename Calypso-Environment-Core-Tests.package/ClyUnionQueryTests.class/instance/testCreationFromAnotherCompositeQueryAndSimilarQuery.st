tests
testCreationFromAnotherCompositeQueryAndSimilarQuery

	| subquery1 subquery2 subquery3 |
	subquery1 := self subqueryInScopeOf: { Array }.
	subquery2 := self subqueryInScope: ClyScopeExample2 of: { String }.
	subquery3 := self subqueryInScopeOf: { Object }.	
		
	query := subquery1, subquery2, subquery3.
	
	self assert: query class equals: self queryClass.
	self assert: query subqueries size equals: 2.
	self assert: query subqueries first equals: (self subqueryInScopeOf: { Array. Object }).
	self assert: query subqueries last equals: subquery3.
	self assert: query requiredResult equals: subquery1 requiredResult