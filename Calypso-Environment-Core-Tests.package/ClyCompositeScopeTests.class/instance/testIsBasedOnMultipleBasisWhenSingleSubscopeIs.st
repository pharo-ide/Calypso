tests
testIsBasedOnMultipleBasisWhenSingleSubscopeIs
	| subscope |
	subscope := ClyScopeExample of: #(basisObject1 basisObject2).
	scope := ClyCompositeScope on: {subscope}.
	
	self assert: scope isBasedOnMultipleBasis