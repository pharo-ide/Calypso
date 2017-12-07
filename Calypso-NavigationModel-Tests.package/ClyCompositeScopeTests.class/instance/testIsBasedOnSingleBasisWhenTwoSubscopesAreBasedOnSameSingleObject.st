tests
testIsBasedOnSingleBasisWhenTwoSubscopesAreBasedOnSameSingleObject
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample ofAll: #(basisObject) in: environment.
	subscope2 := ClyScopeExample2 ofAll: #(basisObject) in: environment.
	scope := ClyCompositeScope
		on:
			{subscope1.
			subscope2}.
	self assert: scope isBasedOnSingleBasis