tests
testIncludesOverrideMethod

	group classScope: { ClyClassWhichInheritsAbstractClass }.	
	
	self assert: (group includesMethod: ClyClassWhichInheritsAbstractClass>>#overriddenMethod)