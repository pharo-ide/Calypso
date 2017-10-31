tests
testSelectingScopeWhenItWasWeaklyCollectedAsGarbage

	| cache scope scope2 |
	environment selectScope: ClyEnvironmentScope of: { self class }.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := environment scopeCacheFor: ClyEnvironmentScope.
	self assert: (cache at: {self class}) equals: nil.
	
	scope := environment selectScope: ClyEnvironmentScope of: { self class }.
	self assert: scope class equals: ClyEnvironmentScope.
	scope2 := environment selectScope: ClyEnvironmentScope of: { self class }.
	self assert: scope == scope2