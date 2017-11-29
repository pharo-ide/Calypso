tests
testClassEnumerationOverClassWhenConcreteClassScopeIsLocal

	| expected |
	scope := ClySubclassScope of: { Class } localScope: ClyClassScope.

	scope classesDo: [ :each | result add: each].
	
	expected := Class allSubclasses asSet.
	self assert: result asSet equals: expected asSet