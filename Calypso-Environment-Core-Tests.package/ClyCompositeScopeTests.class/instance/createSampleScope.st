running
createSampleScope
	| subscope |
	subscope := ClyScopeExample of: #(basisObject).
	
	^ClyCompositeScope on: {subscope}