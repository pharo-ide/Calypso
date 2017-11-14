tests
testIncludesMethodWithHalt

	group classScope: { ClyClassWithHaltMethods }.	
	
	self assert: (group includesMethod: ClyClassWithHaltMethods>>#haltMethod1)