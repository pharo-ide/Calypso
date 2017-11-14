tests
testIncludesOverriddenMethod

	group classScope: { ClyAbstractClassExample }.	
	
	self assert: (group includesMethod: ClyAbstractClassExample>>#overriddenMethod)