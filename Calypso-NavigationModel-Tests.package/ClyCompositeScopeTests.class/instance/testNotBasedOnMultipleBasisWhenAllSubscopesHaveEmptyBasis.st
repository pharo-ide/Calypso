tests
testNotBasedOnMultipleBasisWhenAllSubscopesHaveEmptyBasis
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample of: #() in: environment.
	subscope2 := ClyScopeExample of: #() in: environment.
	
	scope := ClyCompositeScope on: {subscope1. subscope2}.
	
	self deny: scope isBasedOnMultipleBasis