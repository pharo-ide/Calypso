tests
testSelectingScopeShouldRemoveOldWeaklyGarbagedCache

	| cache scope |
	environment selectScope: ClyLocalClassScope of: { self class }.	
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := environment scopeCacheFor: ClyLocalClassScope -> Behavior.
	self assert: (cache at: {self class}) equals: nil.
	
	scope := environment selectScope: ClyLocalClassScope of: { self class superclass }.
	
	cache := environment scopeCacheFor: ClyLocalClassScope -> Behavior.
	self deny: (cache includesKey: { self class })