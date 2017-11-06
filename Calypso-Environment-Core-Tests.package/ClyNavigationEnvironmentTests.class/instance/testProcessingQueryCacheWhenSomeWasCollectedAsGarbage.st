tests
testProcessingQueryCacheWhenSomeWasCollectedAsGarbage

	| evaluated scope |
	scope := environment selectScope: ClyScope of: { self class }.
	scope query: ClySimpleQueryExampleReturningScopeBasis new.
	Smalltalk garbageCollectMost; garbageCollectMost.
	
	evaluated := false.
	scope withCachedQueriesDo: [ :each | evaluated := true ].
	
	self deny: evaluated