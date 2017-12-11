running
createSampleScope
	| subscope subscope2 |
	subscope := ClyScopeExample of: #basisObject in: environment.
	subscope2 := ClyScopeExample2 of: #basisObject2 in: environment.
	^ ClyCompositeScope on: {subscope. subscope2}