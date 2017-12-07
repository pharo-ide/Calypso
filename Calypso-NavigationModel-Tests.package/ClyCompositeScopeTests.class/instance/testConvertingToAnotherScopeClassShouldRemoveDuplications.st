tests
testConvertingToAnotherScopeClassShouldRemoveDuplications
	| convertedScope |
	scope := ClyCompositeScope on: {
		ClyScopeExample ofAll: {Object} in: environment.
		ClyScopeExample2 ofAll: {Object. Array} in: environment}.
		
	convertedScope := scope asScope: ClyScopeExample2.
	
	self assert: convertedScope class equals: ClyScopeExample2.
	self assert: convertedScope basisObjects size equals: 2.
	self assert: convertedScope basisObjects asIdentitySet equals: {Object. Array} asSet.
	self assert: convertedScope environment equals: environment