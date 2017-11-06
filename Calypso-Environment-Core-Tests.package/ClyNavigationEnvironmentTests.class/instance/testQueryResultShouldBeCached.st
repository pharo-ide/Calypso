new tests
testQueryResultShouldBeCached

	| result1 result2 |
	result1 := environment query: (self createQueryInScopeOf: {self class}).
	result2 := environment query: (self createQueryInScopeOf: {self class}).	
		
	self assert: result1 == result2