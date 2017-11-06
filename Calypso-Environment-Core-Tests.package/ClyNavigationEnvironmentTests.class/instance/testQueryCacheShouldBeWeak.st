new tests
testQueryCacheShouldBeWeak

	| cache |
	environment 
		query: ClySimpleQueryExampleReturningScopeBasis new 
		from: (ClyScope of: { self class }).
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	cache := environment cachedResultOf: (ClySimpleQueryExampleReturningScopeBasis 
		from: (ClyScope of: { self class })).
	self assert: cache equals: nil