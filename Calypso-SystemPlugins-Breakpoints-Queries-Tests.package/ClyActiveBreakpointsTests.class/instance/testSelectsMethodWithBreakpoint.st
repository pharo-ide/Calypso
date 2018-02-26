tests
testSelectsMethodWithBreakpoint
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).

	self assert: (query selectsMethod: ClyClassWithBreakpoints >> #methodWithBreakpoints)