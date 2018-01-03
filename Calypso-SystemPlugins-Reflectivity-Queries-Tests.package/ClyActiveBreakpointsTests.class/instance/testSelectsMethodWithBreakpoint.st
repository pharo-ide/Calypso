tests
testSelectsMethodWithBreakpoint
	self installBreakpointInto: (ClyClassWithBreakMethods >> #breakMethod).

	self assert: (query selectsMethod: ClyClassWithBreakMethods >> #breakMethod)