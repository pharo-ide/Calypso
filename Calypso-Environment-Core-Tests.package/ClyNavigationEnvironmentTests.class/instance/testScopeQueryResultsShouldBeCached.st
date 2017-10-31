tests
testScopeQueryResultsShouldBeCached

	| content content2 scope |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	content := (scope query: ClySortedMethods) queryResult.
	content2 := (scope query: ClySortedMethods) queryResult.
	
	self assert: content == content2