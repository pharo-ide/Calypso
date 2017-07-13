tests
testIncludesOverrideMethod

	group classes: { ClyClassWhichInheritsAbstractClass }.	
	
	self assert: (group includesMethod: ClyClassWhichInheritsAbstractClass>>#overriddenMethod)