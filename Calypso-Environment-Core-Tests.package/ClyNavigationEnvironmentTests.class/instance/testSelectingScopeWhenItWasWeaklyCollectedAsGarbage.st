tests
testSelectingScopeWhenItWasWeaklyCollectedAsGarbage

	| cache scope scope2 |
	environment selectScope: ClyLocalClassScope of: { self class }.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := environment scopeCacheFor: ClyLocalClassScope.
	self assert: (cache at: {self class}) equals: nil.
	
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	self assert: scope class equals: ClyLocalClassScope.
	scope2 := environment selectScope: ClyLocalClassScope of: { self class }.
	self assert: scope == scope2