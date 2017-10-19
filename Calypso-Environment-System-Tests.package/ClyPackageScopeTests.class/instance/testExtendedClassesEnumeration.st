tests
testExtendedClassesEnumeration

	scope := ClyPackageScope of: { ClyClass1FromP1 package }.
	
	scope extendedClassesDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyClass1FromP1 package extendedClasses).
	self deny: (result includesAll: ClyClass1FromP1 package definedClasses).
	