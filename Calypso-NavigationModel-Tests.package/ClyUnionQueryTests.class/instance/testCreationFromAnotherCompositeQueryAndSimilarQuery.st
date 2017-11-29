tests
testCreationFromAnotherCompositeQueryAndSimilarQuery

	| subquery1 subquery2 subquery3 |
	subquery1 := self subqueryInScopeOf: { Array }.
	subquery2 := self subqueryInScope: ClyScopeExample2 of: { String }.
	subquery3 := self subqueryInScopeOf: { Object }.	
		
	query := subquery1, subquery2, subquery3.
	
	self assert: query class equals: self queryClass.
	self assert: query subqueries equals: { 
		self subqueryInScopeOf: { Array. Object }. subquery2} asSet.
	self assert: query requiredResult equals: subquery1 requiredResult