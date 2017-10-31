tests
testQueringScopeShouldRemoveOldWeaklyGarbagedCache

	| scope result |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	scope query: ClySortedClasses.
	Smalltalk garbageCollectMost; garbageCollectMost.
	result := scope cachedResultOf: ClySortedClasses asEnvironmentQuery.
	self assert: result equals: nil.
	
	result := scope query: ClyHierarchicallySortedClasses.
	
	self deny: (scope queryCache includesKey: ClySortedClasses asEnvironmentQuery)