tests
testCompareWithSimilarQueryWhichSubqueryHasDifferentScope

	| query2 |
	query2 := ClyCompositeQuery with: { 
		ClySimpleQueryExampleReturningScopeBasis from: (ClyScope of: { self class superclass })}.
	
	self deny: query = query2