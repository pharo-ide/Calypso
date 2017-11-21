running
createSampleScope
	| subscope |
	subscope := ClyScopeExample of: #(basisObject) in: environment.
	
	^ClyCompositeScope on: {subscope}