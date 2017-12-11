tests
testSelectsMethodWithBreakpoint
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.

	self assert: (query selectsMethod: ClyClassWithBreakMethods >> #breakMethod)