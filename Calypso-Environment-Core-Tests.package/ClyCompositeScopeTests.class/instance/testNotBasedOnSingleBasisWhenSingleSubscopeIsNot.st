tests
testNotBasedOnSingleBasisWhenSingleSubscopeIsNot
	| subscope |
	subscope := ClyScopeExample of: #(basisObject1 basisObject2).
	scope := ClyCompositeScope of: {subscope}.
	
	self deny: scope isBasedOnSingleBasis