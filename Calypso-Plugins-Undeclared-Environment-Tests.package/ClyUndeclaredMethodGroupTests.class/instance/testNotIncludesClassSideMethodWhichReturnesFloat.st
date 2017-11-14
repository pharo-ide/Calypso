tests
testNotIncludesClassSideMethodWhichReturnesFloat

	group classScope: { ClyClassWithUndeclares class }.	
	
	self deny: (group includesMethod: ClyClassWithUndeclares class>>#withFloatReturn)