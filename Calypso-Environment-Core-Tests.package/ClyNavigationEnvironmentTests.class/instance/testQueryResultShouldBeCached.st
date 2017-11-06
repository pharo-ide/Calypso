new tests
testQueryResultShouldBeCached

	| result1 result2 |
	result1 := environment 
		query: ClySimpleQueryExampleReturningScopeBasis new 
		from: (ClyScope of: { self class }).
	result2 := environment 
		query: ClySimpleQueryExampleReturningScopeBasis new 
		from: (ClyScope of: { self class }).
	
	self assert: result1 == result2