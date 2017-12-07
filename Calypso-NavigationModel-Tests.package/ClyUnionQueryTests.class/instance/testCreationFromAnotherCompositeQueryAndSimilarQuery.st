tests
testCreationFromAnotherCompositeQueryAndSimilarQuery

	| subquery1 subquery2 subquery3 |
	subquery1 := self subqueryFromScopeOf: Array.
	subquery2 := self subqueryFromScope: ClyScopeExample2 of: String.
	subquery3 := self subqueryFromScopeOf: Object.	
		
	query := subquery1, subquery2, subquery3.
	
	self assert: query class equals: self queryClass.
	self assert: query subqueries equals: { 
		self subqueryFromScope: (ClyScopeExample ofAll: { Array. Object }). subquery2} asSet.
	self assert: query requiredResult equals: subquery1 requiredResult