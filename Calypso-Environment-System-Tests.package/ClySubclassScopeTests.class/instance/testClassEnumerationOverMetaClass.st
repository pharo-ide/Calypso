tests
testClassEnumerationOverMetaClass

	| expected |
	scope := ClySubclassScope of: { ClyClass1FromP1 class }.
	
	scope classesDo: [ :each | result add: each].
	
	expected := ClyClass1FromP1 allSubclasses collect: #classSide.
	self assert: result asSet equals: expected asSet