tests
testFromThreeMethods
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.
	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithHaltMethods >> #haltMethod1. 
		ClyClassWithBreakMethods >> #breakMethod.
		ClyClassWithBreakMethods >> #notBreakMethod}.
	
	self assert: foundSelectors sorted asArray equals: #(breakMethod haltMethod1) 