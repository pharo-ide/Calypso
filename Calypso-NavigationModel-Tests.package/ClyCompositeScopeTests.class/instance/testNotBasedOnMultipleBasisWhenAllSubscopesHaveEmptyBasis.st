tests
testNotBasedOnMultipleBasisWhenAllSubscopesHaveEmptyBasis
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample emptyIn: environment.
	subscope2 := ClyScopeExample emptyIn: environment.
	scope := ClyCompositeScope on: {subscope1. subscope2}.

	self deny: scope isBasedOnMultipleBasis