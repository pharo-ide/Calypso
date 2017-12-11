tests
testNotSelectsClassSideMethodWhichReturnesFloat

	self deny: (query selectsMethod: ClyClassWithUndeclares class>>#withFloatReturn)