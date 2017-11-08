tests
testCreationOnTwoSimilarSubscopesOfSameObject
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample of: #(sameBasisObject basisObject1).
	subscope2 := ClyScopeExample of: #(sameBasisObject basisObject2).
	
	scope := ClyCompositeScope on: {subscope1. subscope2}.
	
	self assert: scope basisObjects asSet equals: #(sameBasisObject basisObject1 basisObject2) asSet