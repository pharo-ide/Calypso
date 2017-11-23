tests
testCreationFromTwoQueriesOfSameTypeSimilarScope

	| subquery1 subquery2 |
	subquery1 := self subqueryInScope: ClyScopeExample of: {Array}.
	subquery2 := self subqueryInScope: ClyScopeExample of: {String. Array}.
	
	query := subquery1, subquery2.
	
	self assert: query class equals: subquery1 class.
	self deny: query == subquery1.
	self assert: query scope equals: (ClyScopeExample of: {Array. String} in: environment).
	self assert: query requiredResult == subquery1