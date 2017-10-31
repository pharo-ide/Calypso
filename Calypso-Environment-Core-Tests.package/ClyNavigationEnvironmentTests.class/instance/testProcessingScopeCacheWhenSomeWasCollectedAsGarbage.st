tests
testProcessingScopeCacheWhenSomeWasCollectedAsGarbage

	| evaluated |
	environment selectScope: ClyLocalClassScope of: { self class }.
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	evaluated := false.
	environment withCachedScopesDo: [ :each | evaluated := true ].
	
	self deny: evaluated