running
createSampleScope
	| subscope subscope2 |
	subscope := ClyScopeExample ofAll: #(basisObject) in: environment.
	subscope2 := ClyScopeExample2 ofAll: #(basisObject2) in: environment.
	^ ClyCompositeScope
		on:
			{subscope.
			subscope2}