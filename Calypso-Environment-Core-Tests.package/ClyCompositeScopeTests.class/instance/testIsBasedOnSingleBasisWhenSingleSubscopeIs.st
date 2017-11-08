tests
testIsBasedOnSingleBasisWhenSingleSubscopeIs
	| subscope |
	subscope := ClyScopeExample of: #(basisObject).
	scope := ClyCompositeScope on: {subscope}.
	
	self assert: scope isBasedOnSingleBasis