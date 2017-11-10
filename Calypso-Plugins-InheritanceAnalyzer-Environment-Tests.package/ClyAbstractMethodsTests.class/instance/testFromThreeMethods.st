tests
testFromThreeMethods

	self queryInScope: ClyMethodScope of: {
		ClyAbstractClassExample >> #abstractMethod1. 
		ClyAbstractClassExample >> #abstractMethod2.
		Object >> #printString}.
	
	self assert: foundSelectors equals: #(abstractMethod1 abstractMethod2)