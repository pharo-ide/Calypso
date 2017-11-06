tests
testSelectingScopeShouldRemoveOldWeaklyGarbagedCache

	| cache scope |
	environment selectScope: ClyScope of: { self class }.	
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := environment scopeCacheFor: ClyScope.
	self assert: (cache clyIncludesCleanedKey: {self class}).
	
	scope := environment selectScope: ClyScope of: { self class superclass }.
	
	cache := environment scopeCacheFor: ClyScope.
	self deny: (cache includesKey: { self class })