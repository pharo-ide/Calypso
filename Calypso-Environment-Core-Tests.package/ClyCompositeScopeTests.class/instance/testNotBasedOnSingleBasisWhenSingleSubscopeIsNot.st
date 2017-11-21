tests
testNotBasedOnSingleBasisWhenSingleSubscopeIsNot
	| subscope |
	subscope := ClyScopeExample of: #(basisObject1 basisObject2) in: environment.
	scope := ClyCompositeScope on: {subscope}.
	
	self deny: scope isBasedOnSingleBasis