tests
testScopesShouldBeCached

	| scope scope2 |
	scope := environment selectScope: ClyEnvironmentScope of: { self class }.
	
	scope2 := environment selectScope: ClyEnvironmentScope of: { self class }. 
	
	self assert: scope == scope2