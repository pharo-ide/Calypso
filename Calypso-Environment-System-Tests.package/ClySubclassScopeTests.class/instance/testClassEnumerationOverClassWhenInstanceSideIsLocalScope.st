tests
testClassEnumerationOverClassWhenInstanceSideIsLocalScope

	| expected |
	scope := ClySubclassScope of: { Class } localScope: ClyInstanceSideScope.

	scope classesDo: [ :each | result add: each].
	
	expected := Class subclasses select: #isInstanceSide.
	self assert: result asSet equals: expected asSet