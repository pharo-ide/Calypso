tests
testCreationOnSingleSubscopeOfSingleObject
	| subscope |
	subscope := ClyScopeExample of: #(basisObject).
	
	scope := ClyCompositeScope of: {subscope}.
	
	self assert: scope basisObjects equals: {subscope}