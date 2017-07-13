tests
testIncludesOverriddenMethod

	group classes: { ClyAbstractClassExample }.	
	
	self assert: (group includesMethod: ClyAbstractClassExample>>#overriddenMethod)