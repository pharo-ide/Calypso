tests
testQueryExecutionShouldRemoveOldWeaklyGarbagedCache

	| result query |
	query := self createQueryFromScopeOf: self class.
	environment query: query.
	Smalltalk garbageCollectMost; garbageCollectMost.
	result := environment cachedResultOf: query.
	self assert: result equals: nil.
	
	result := environment query: (self createQueryFromScopeOf: self class superclass).
	self deny: (environment queryCache includesKey: query)