tests
testHasCompositeScopeFromSubqueries

	| scope |
	scope := query scope.
	
	self assert: scope class equals: ClyCompositeScope.
	self assert: scope subscopes equals: (query subqueries collect: #scope).