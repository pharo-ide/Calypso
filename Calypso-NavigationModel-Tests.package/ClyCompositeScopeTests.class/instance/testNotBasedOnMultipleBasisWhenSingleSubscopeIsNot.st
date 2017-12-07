tests
testNotBasedOnMultipleBasisWhenSingleSubscopeIsNot
	| subscope |
	subscope := ClyScopeExample ofAll: #(basisObject) in: environment.
	scope := ClyCompositeScope on: {subscope}.
	self deny: scope isBasedOnMultipleBasis