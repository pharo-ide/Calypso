tests
testClassEnumerationOverMetaclassBasisWhenInstanceSideIsLocalScope

	scope := ClyInterestingSuperclassScope 
		of: { ClySubclassN1OfClass1FromP1 class } localScope: ClyInstanceSideScope.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {ClyClass1FromP1 } asSet