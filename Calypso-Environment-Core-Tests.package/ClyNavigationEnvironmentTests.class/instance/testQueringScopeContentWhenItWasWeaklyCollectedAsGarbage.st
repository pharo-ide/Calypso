tests
testQueringScopeContentWhenItWasWeaklyCollectedAsGarbage

	| cache scope content content2 |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	scope query: ClySortedMethods.
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := scope cachedResultOf: ClySortedMethods.
	self assert: cache equals: nil.
	
	content := (scope query: ClySortedMethods) queryResult.
	self assert: content class equals: ClySortedMethods.
	content2 := (scope query: ClySortedMethods) queryResult.
	self assert: content == content2