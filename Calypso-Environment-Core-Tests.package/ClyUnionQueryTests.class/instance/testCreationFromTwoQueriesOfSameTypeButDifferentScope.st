tests
testCreationFromTwoQueriesOfSameTypeButDifferentScope

	| subquery1 subquery2 |
	subquery1 := self subqueryInScope: ClyScopeExample of: {Array}.
	subquery2 := self subqueryInScope: ClyScopeExample2 of: {String}.
	
	query := subquery1, subquery2.
	
	self assert: query class equals: self queryClass.
	self assert: query subqueries equals: {subquery1. subquery2}.
	self assert: query requiredResult == subquery1