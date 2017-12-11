tests
testIsBasedOnSingleBasisWhenTwoSubscopesAreBasedOnSameSingleObject
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample of: #basisObject in: environment.
	subscope2 := ClyScopeExample2 of: #basisObject in: environment.
	scope := ClyCompositeScope on: {subscope1. subscope2}.
	
	self assert: scope isBasedOnSingleBasis