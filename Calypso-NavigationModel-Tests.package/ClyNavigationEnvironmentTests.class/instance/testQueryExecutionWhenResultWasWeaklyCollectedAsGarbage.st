tests
testQueryExecutionWhenResultWasWeaklyCollectedAsGarbage

	| cache result result2 query |
	query := self createQueryFromScopeOf: self class.
	environment query: query.
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := environment cachedResultOf: query.
	self assert: cache equals: nil.
	
	result := environment query: query.
	self assert: result class equals: ClyRawQueryResult.
	result2 := environment query: query.
	self assert: result == result2