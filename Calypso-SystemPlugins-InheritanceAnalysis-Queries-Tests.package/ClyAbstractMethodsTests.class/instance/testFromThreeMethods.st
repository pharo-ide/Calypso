tests
testFromThreeMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyAbstractClassExample >> #abstractMethod1. 
		ClyAbstractClassExample >> #abstractMethod2.
		Object >> #printString}.
	
	self assert: foundSelectors equals: #(abstractMethod1 abstractMethod2)