tests
testNotIncludesMethodWithoutBreakpoint

	group classScope: { ClyClassWithBreakMethods }.	
	
	self deny: (group includesMethod: ClyClassWithBreakMethods>>#notBreakMethod)