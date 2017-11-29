tests
testFromThreeMethods
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.
	self queryInScope: ClyMethodScope of: {
		ClyClassWithHaltMethods >> #haltMethod1. 
		ClyClassWithBreakMethods >> #breakMethod.
		ClyClassWithBreakMethods >> #notBreakMethod}.
	
	self assert: foundSelectors sorted asArray equals: #(breakMethod haltMethod1) 