tests
testScopeQueryCacheShouldBeWeak

	| cache scope |
	scope := environment selectScope: ClyScope of: { self class }.
	scope query: ClySimpleQueryExampleReturningScopeBasis new.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	cache := scope cachedResultOf: ClySimpleQueryExampleReturningScopeBasis new.
	self assert: cache equals: nil