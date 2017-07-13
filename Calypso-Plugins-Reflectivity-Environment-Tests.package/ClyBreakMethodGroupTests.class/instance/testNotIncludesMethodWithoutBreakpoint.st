tests
testNotIncludesMethodWithoutBreakpoint

	group classes: { ClyClassWithBreakMethods }.	
	
	self deny: (group includesMethod: ClyClassWithBreakMethods>>#notBreakMethod)