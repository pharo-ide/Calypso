tests
testIsBasedOnSingleBasisWhenTwoSubscopesAreBasedOnSameSingleObject
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample of: #(basisObject).
	subscope2 := ClyScopeExample2 of: #(basisObject).
	scope := ClyCompositeScope on: {subscope1. subscope2}.
	
	self assert: scope isBasedOnSingleBasis