tests
testNotBasedOnMultipleBasisWhenSingleSubscopeIsNot
	| subscope |
	subscope := ClyScopeExample of: #(basisObject) in: environment.
	scope := ClyCompositeScope on: {subscope}.
	
	self deny: scope isBasedOnMultipleBasis