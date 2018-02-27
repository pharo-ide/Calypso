tests
testFromThreeMethods
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).
	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithHalts >> #methodWithHalts1. 
		ClyClassWithBreakpoints >> #methodWithBreakpoints.
		ClyClassWithBreakpoints >> #methodWithoutBreakpoints}.
	
	self assert: foundSelectors sorted asArray equals: #(#methodWithBreakpoints #methodWithHalts1) 