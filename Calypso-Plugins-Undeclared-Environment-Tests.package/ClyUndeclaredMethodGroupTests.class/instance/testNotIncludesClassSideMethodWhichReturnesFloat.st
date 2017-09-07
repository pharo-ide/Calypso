tests
testNotIncludesClassSideMethodWhichReturnesFloat

	group classes: { ClyClassWithUndeclares class }.	
	
	self deny: (group includesMethod: ClyClassWithUndeclares class>>#withFloatReturn)