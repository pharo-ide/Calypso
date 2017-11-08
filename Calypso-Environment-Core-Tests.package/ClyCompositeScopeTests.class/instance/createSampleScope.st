running
createSampleScope
	| subscope |
	subscope := ClyScopeExample of: #(basisObject).
	
	^ClyCompositeScope of: {subscope}