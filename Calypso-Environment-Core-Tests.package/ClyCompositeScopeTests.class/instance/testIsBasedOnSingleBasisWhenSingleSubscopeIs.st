tests
testIsBasedOnSingleBasisWhenSingleSubscopeIs
	| subscope |
	subscope := ClyScopeExample of: #(basisObject) in: environment.
	scope := ClyCompositeScope on: {subscope}.
	
	self assert: scope isBasedOnSingleBasis