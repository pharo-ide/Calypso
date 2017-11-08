tests
testNotBasedOnMultipleBasisWhenSingleSubscopeIsNot
	| subscope |
	subscope := ClyScopeExample of: #(basisObject).
	scope := ClyCompositeScope of: {subscope}.
	
	self deny: scope isBasedOnMultipleBasis