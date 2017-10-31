tests
testScopesCacheShouldBeWeak

	| cache |
	environment selectScope: ClyLocalClassScope of: { self class }.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	cache := environment scopeCacheFor: ClyLocalClassScope -> Behavior.
	self assert: (cache at: {self class}) equals: nil