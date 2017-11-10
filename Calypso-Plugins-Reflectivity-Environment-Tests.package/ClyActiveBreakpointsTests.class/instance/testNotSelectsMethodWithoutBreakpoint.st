tests
testNotSelectsMethodWithoutBreakpoint
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.

	self deny: (query selectsMethod: ClyClassWithBreakMethods >> #notBreakMethod)