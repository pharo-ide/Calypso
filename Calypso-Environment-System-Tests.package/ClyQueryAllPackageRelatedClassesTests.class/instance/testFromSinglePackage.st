tests
testFromSinglePackage

	| expected |
	self queryInScope: ClyPackageScope of: {ClyClass1FromP1 package}.

	expected := ClyClass1FromP1 package definedClasses, ClyClass1FromP1 package extendedClasses.
	self assert: resultItems asSet equals: expected asSet