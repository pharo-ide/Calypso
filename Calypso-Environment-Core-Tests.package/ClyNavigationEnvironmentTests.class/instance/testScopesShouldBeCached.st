tests
testScopesShouldBeCached

	| scope scope2 |
	scope := environment selectScope: ClyScope of: { self class }.
	
	scope2 := environment selectScope: ClyScope of: { self class }. 
	
	self assert: scope == scope2