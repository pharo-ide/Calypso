tests
testSelectingScopeWhenItWasWeaklyCollectedAsGarbage

	| cache scope scope2 |
	environment selectScope: ClyScope of: { self class }.
	
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := environment scopeCacheFor: ClyScope.
	self assert: (cache clyIncludesCleanedKey: {self class}).
	
	scope := environment selectScope: ClyScope of: { self class }.
	self assert: scope class equals: ClyScope.
	scope2 := environment selectScope: ClyScope of: { self class }.
	self assert: scope == scope2