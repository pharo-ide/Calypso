tests
testCreationFromTwoQueriesOfSameTypeAndScopeButWithDifferentParameter

	| subquery1 subquery2 |
	subquery1 := self subqueryFromScopeOf: Array.
	subquery1 extraParameter: #testParameter.
	subquery2 := self subqueryFromScopeOf: Array.
	subquery2 extraParameter: #testParameter2.
	query := subquery1, subquery2.
	
	self assert: query class equals: self queryClass.
	self assert: query subqueries equals: {subquery1. subquery2} asSet.
	self assert: query requiredResult == subquery1 requiredResult