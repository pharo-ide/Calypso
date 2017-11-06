tests
testScopesCacheShouldBeWeak

	| cache |
	environment selectScope: ClyScope of: { self class }.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	cache := environment scopeCacheFor: ClyScope.

	self assert: (cache clyIncludesCleanedKey: {self class}) 