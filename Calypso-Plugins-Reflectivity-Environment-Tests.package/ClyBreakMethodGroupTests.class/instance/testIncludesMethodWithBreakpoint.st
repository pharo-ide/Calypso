tests
testIncludesMethodWithBreakpoint
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.

	group classScope: { ClyClassWithBreakMethods }.	
	
	self assert: (group includesMethod: ClyClassWithBreakMethods>>#breakMethod)