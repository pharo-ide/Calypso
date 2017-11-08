tests
testIsBasedOnSingleBasisWhenSingleSubscopeIs
	| subscope |
	subscope := ClyScopeExample of: #(basisObject).
	scope := ClyCompositeScope of: {subscope}.
	
	self assert: scope isBasedOnSingleBasis