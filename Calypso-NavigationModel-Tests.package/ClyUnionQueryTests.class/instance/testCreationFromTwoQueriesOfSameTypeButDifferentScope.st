tests
testCreationFromTwoQueriesOfSameTypeButDifferentScope

	| subquery1 subquery2 |
	subquery1 := self subqueryFromScope: ClyScopeExample of: Array.
	subquery2 := self subqueryFromScope: ClyScopeExample2 of: String.
	
	query := subquery1, subquery2.
	
	self assert: query class equals: self queryClass.
	self assert: query subqueries asSet equals: {subquery1. subquery2} asSet.
	self assert: query requiredResult == subquery1 requiredResult