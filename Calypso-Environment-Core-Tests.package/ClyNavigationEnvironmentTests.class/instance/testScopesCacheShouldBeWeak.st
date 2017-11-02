tests
testScopesCacheShouldBeWeak

	| cache |
	environment selectScope: ClyEnvironmentScope of: { self class }.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	cache := environment scopeCacheFor: ClyEnvironmentScope.

	self assert: (cache clyIncludesCleanedKey: {self class}) 