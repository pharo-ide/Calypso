tests
testScopesShouldBeCached

	| scope scope2 |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	
	scope2 := environment selectScope: ClyLocalClassScope of: { self class }. 
	
	self assert: scope == scope2