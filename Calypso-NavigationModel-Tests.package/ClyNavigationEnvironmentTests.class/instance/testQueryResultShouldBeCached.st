tests
testQueryResultShouldBeCached

	| result1 result2 |
	result1 := environment query: (self createQueryFromScopeOf: self class).
	result2 := environment query: (self createQueryFromScopeOf: self class).	
		
	self assert: result1 == result2