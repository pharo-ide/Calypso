tests
testFromThreeMethods
	self installBreakpointInto: (ClyClassWithBreakMethods >> #breakMethod).
	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithHaltMethods >> #haltMethod1. 
		ClyClassWithBreakMethods >> #breakMethod.
		ClyClassWithBreakMethods >> #notBreakMethod}.
	
	self assert: foundSelectors sorted asArray equals: #(breakMethod haltMethod1) 