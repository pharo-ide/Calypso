tests
testIncludesMethodWithBreakpoint
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.

	group classes: { ClyClassWithBreakMethods }.	
	
	self assert: (group includesMethod: ClyClassWithBreakMethods>>#breakMethod)