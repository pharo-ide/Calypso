tests
testIncludesAbstractMethod

	group classScope: { ClyAbstractClassExample }.	
	
	self assert: (group includesMethod: ClyAbstractClassExample>>#abstractMethod1)