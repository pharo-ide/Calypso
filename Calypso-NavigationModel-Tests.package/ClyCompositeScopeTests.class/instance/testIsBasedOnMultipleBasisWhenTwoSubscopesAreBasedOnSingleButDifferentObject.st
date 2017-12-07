tests
testIsBasedOnMultipleBasisWhenTwoSubscopesAreBasedOnSingleButDifferentObject
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample ofAll: #(basisObject1) in: environment.
	subscope2 := ClyScopeExample ofAll: #(basisObject2) in: environment.
	scope := ClyCompositeScope
		on:
			{subscope1.
			subscope2}.
	self assert: scope isBasedOnMultipleBasis