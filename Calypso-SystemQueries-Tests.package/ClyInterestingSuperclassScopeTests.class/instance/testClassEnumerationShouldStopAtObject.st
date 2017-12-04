tests
testClassEnumerationShouldStopAtObject

	scope := ClyInterestingSuperclassScope of: { ClySubclassN1OfClass1FromP1 }.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asArray equals: { ClyClass1FromP1 }