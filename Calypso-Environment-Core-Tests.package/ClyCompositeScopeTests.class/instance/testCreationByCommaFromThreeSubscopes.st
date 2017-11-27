tests
testCreationByCommaFromThreeSubscopes
	| subscope1 subscope2 subscope3 |
	subscope1 := ClyScopeExample of: #(basisObject1) in: environment.
	subscope2 := ClyScopeExample2 of: #(basisObject2) in: environment.
	subscope3 := ClyScopeExample2 of: #(basisObject3) in: environment.
	scope := subscope1 , subscope2, subscope3.
	
	self assert: scope class equals: ClyCompositeScope.
	self assert: scope basisObjects equals: #(basisObject1 basisObject2 basisObject3) asSet.
	self assert: scope subscopes asSet equals: {subscope1. subscope2. subscope3} asSet.
	self assert: scope environment equals: environment