tests
testClassEnumeration

	| expected |
	scope := ClySuperclassScope of: { ClyClass1FromP1 }.
	
	scope classesDo: [ :each | result add: each].
	
	expected := ClyClass1FromP1 allSuperclasses.
	self assert: result asSet equals: expected asSet