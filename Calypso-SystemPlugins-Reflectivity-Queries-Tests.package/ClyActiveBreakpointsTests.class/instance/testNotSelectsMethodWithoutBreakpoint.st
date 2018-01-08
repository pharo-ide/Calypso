tests
testNotSelectsMethodWithoutBreakpoint
	self installBreakpointInto: (ClyClassWithBreakMethods >> #breakMethod).

	self deny: (query selectsMethod: ClyClassWithBreakMethods >> #notBreakMethod)