tests
testFromThreeMethods

	self queryInScope: ClyMethodScope of: {
		ClyAbstractClassExample >> #abstractMethod1. 
		ClyAbstractClassExample >> #abstractMethod2.
		ClyAbstractClassExample >> #overriddenMethod}.
	
	self assert: foundSelectors equals: #(abstractMethod1 overriddenMethod)