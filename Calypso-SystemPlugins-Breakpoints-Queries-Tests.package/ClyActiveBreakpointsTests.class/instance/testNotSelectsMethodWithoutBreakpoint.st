tests
testNotSelectsMethodWithoutBreakpoint
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).

	self deny: (query selectsMethod: ClyClassWithBreakpoints >> #methodWithoutBreakpoints)