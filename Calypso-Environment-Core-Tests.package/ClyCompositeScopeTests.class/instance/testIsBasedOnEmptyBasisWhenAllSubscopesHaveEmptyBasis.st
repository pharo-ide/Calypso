tests
testIsBasedOnEmptyBasisWhenAllSubscopesHaveEmptyBasis
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample of: #().
	subscope2 := ClyScopeExample of: #().
	
	scope := ClyCompositeScope on: {subscope1. subscope2}.
	
	self assert: scope isBasedOnEmptyBasis