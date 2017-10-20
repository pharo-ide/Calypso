tests
testClassEnumeration

	scope := ClyLocalClassScope of: { ClyClass1FromP1. ClyClass2FromP1 }.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result equals: scope basisObjects asSet