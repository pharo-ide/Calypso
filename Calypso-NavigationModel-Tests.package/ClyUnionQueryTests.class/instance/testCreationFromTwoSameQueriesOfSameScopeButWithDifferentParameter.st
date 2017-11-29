tests
testCreationFromTwoSameQueriesOfSameScopeButWithDifferentParameter

	| subquery1 subquery2 |
	subquery1 := self subqueryInScopeOf: {Array}.
	subquery1 scope extraParameter: #testParameter.
	subquery2 := self subqueryInScopeOf: {Array}.
	subquery2 scope extraParameter: #testParameter2.
	query := subquery1, subquery2.
	
	self assert: query class equals: self queryClass.
	self assert: query subqueries equals: {subquery1. subquery2} asSet.
	self assert: query requiredResult == subquery1 requiredResult