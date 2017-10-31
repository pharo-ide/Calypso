tests
testScopeQueryResultsShouldBeCached

	| scope result result2 |
	scope := environment selectScope: ClyEnvironmentScope of: { self class }.
	result := scope query: ClySimpleQueryExampleReturningScopeBasis new.
	result2 := scope query: ClySimpleQueryExampleReturningScopeBasis new.
	
	self assert: result == result2