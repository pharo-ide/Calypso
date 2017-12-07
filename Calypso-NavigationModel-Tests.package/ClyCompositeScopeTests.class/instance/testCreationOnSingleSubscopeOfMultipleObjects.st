tests
testCreationOnSingleSubscopeOfMultipleObjects
	| subscope |
	subscope := ClyScopeExample
		ofAll: #(basisObject1 basisObject2)
		in: environment.
	scope := ClyCompositeScope on: {subscope}.
	self
		assert: scope basisObjects asSet
		equals: subscope basisObjects asSet