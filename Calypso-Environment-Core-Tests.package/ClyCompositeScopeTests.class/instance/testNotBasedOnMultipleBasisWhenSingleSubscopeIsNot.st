tests
testNotBasedOnMultipleBasisWhenSingleSubscopeIsNot
	| subscope |
	subscope := ClyScopeExample of: #(basisObject).
	scope := ClyCompositeScope on: {subscope}.
	
	self deny: scope isBasedOnMultipleBasis