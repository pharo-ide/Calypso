tests
testClassEnumeration

	| expected |
	scope := ClySubclassScope of: { ClyClass1FromP1 }.
	
	scope classesDo: [ :each | result add: each].
	
	expected := ClyClass1FromP1 allSubclasses.
	self assert: result asSet equals: expected asSet