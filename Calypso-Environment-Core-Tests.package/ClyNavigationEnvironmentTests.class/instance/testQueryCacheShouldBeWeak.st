new tests
testQueryCacheShouldBeWeak

	| cache query |
	query := self createQueryInScopeOf: {self class}.
	environment query: query.	
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	cache := environment cachedResultOf: query.
	self assert: cache equals: nil