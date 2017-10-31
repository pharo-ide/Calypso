tests
testProcessingQueryCacheWhenSomeWasCollectedAsGarbage

	| evaluated scope |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	scope query: ClySortedMethods.
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	evaluated := false.
	scope withCachedQueriesDo: [ :each | evaluated := true ].
	
	self deny: evaluated