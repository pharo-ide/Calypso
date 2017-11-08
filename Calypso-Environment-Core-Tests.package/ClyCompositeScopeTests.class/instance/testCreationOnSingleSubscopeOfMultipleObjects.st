tests
testCreationOnSingleSubscopeOfMultipleObjects
	| subscope |
	subscope := ClyScopeExample of: #(basisObject1 basisObject2).
	
	scope := ClyCompositeScope on: {subscope}.
	
	self assert: scope basisObjects asSet equals: subscope basisObjects asSet