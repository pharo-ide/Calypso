tests
testIncludesMethodWithHalt

	group classes: { ClyClassWithHaltMethods }.	
	
	self assert: (group includesMethod: ClyClassWithHaltMethods>>#haltMethod1)