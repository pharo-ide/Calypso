tests
testScopeQueryCacheShouldBeWeak

	| cache scope |
	scope := environment selectScope: ClyEnvironmentScope of: { self class }.
	scope query: ClySimpleQueryExampleReturningScopeBasis new.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	cache := scope cachedResultOf: ClySimpleQueryExampleReturningScopeBasis new.
	self assert: cache equals: nil