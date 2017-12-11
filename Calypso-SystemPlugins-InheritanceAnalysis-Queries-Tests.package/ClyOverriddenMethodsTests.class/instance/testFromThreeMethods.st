tests
testFromThreeMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyAbstractClassExample >> #abstractMethod1. 
		ClyAbstractClassExample >> #abstractMethod2.
		ClyAbstractClassExample >> #overriddenMethod}.
	
	self assert: foundSelectors equals: #(abstractMethod1 overriddenMethod)