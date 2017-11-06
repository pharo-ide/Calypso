tests
testQueringScopeShouldRemoveOldWeaklyGarbagedCache

	| scope result |
	scope := environment selectScope: ClyScope of: { self class }.
	scope query: ClySimpleQueryExampleReturningScopeBasis new.
	Smalltalk garbageCollectMost; garbageCollectMost.
	result := scope cachedResultOf: ClySimpleQueryExampleReturningScopeBasis new.
	self assert: result equals: nil.
	
	result := scope query: ClySimpleQueryExampleReturningScopeBasis2 new.
	
	self deny: (scope queryCache includesKey: ClySimpleQueryExampleReturningScopeBasis new)