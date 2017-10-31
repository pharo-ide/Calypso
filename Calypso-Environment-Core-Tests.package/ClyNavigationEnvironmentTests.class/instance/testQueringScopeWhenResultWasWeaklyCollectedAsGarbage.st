tests
testQueringScopeWhenResultWasWeaklyCollectedAsGarbage

	| cache scope result result2 |
	scope := environment selectScope: ClyEnvironmentScope of: { self class }.
	scope query: ClySimpleQueryExampleReturningScopeBasis new.
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := scope cachedResultOf: ClySimpleQueryExampleReturningScopeBasis new.
	self assert: cache equals: nil.
	
	result := scope query: ClySimpleQueryExampleReturningScopeBasis new.
	self assert: result class equals: ClyRawQueryResult.
	result2 := scope query: ClySimpleQueryExampleReturningScopeBasis new.
	self assert: result == result2