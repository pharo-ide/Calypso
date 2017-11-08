tests
testCreationOnSingleSubscopeOfMultipleObjects
	| subscope |
	subscope := ClyScopeExample of: #(basisObject1 basisObject2).
	
	scope := ClyCompositeScope of: {subscope}.
	
	self assert: scope basisObjects equals: {subscope}