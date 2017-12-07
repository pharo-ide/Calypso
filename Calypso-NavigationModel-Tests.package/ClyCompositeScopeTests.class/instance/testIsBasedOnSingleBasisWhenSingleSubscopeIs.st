tests
testIsBasedOnSingleBasisWhenSingleSubscopeIs
	| subscope |
	subscope := ClyScopeExample ofAll: #(basisObject) in: environment.
	scope := ClyCompositeScope on: {subscope}.
	self assert: scope isBasedOnSingleBasis