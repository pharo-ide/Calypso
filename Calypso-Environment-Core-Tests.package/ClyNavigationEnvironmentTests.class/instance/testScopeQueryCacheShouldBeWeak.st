tests
testScopeQueryCacheShouldBeWeak

	| cache scope |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	scope query: ClySortedMethods.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	cache := scope cachedResultOf: ClySortedMethods.
	self assert: cache equals: nil