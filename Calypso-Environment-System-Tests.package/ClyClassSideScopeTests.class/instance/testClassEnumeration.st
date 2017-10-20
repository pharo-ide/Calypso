tests
testClassEnumeration

	scope := ClyClassSideScope of: { ClyClass1FromP1 classSide. ClyClass2FromP1 }.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result equals: { ClyClass1FromP1 classSide. ClyClass2FromP1 classSide } asSet