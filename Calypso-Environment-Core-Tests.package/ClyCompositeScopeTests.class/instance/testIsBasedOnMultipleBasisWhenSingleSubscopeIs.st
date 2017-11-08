tests
testIsBasedOnMultipleBasisWhenSingleSubscopeIs
	| subscope |
	subscope := ClyScopeExample of: #(basisObject1 basisObject2).
	scope := ClyCompositeScope of: {subscope}.
	
	self assert: scope isBasedOnMultipleBasis