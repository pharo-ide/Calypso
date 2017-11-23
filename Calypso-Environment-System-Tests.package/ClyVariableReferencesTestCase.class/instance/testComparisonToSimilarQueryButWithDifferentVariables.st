tests
testComparisonToSimilarQueryButWithDifferentVariables

	| query2 |
	query2 := self createQuery.
	query2 variableQuery: (ClyConstantQuery returning: #(someAnotherVar)).
	
	self deny: query = query2