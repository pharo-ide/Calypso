tests
testScopeQueryResultsShouldBeCached

	| content content2 scope |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	content := (scope query: ClySortedMethods) observedContent.
	content2 := (scope query: ClySortedMethods) observedContent.
	
	self assert: content == content2