tests
testProcessingQueryCacheWhenSomeWasCollectedAsGarbage

	| evaluated |
	environment query: (self createQueryFromScopeOf: self class).
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	evaluated := false.
	environment withCachedQueriesDo: [ :each | evaluated := true ].
	
	self deny: evaluated