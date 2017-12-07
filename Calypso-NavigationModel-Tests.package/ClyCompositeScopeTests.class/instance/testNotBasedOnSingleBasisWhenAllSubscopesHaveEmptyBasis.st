tests
testNotBasedOnSingleBasisWhenAllSubscopesHaveEmptyBasis
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample ofAll: #() in: environment.
	subscope2 := ClyScopeExample ofAll: #() in: environment.
	scope := ClyCompositeScope
		on:
			{subscope1.
			subscope2}.
	self deny: scope isBasedOnSingleBasis