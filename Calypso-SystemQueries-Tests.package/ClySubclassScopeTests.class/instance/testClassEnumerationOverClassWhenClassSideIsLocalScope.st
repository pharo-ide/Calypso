tests
testClassEnumerationOverClassWhenClassSideIsLocalScope

	| expected |
	scope := ClySubclassScope of: Class localScope: ClyClassSideScope.

	scope classesDo: [ :each | result add: each].
	
	expected := Class subclasses select: #isInstanceSide thenCollect: #classSide.
	self assert: result asSet equals: expected asSet