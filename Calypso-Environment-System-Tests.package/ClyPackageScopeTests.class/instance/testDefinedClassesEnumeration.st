tests
testDefinedClassesEnumeration

	scope := ClyPackageScope of: { ClyClass1FromP1 package }.
	
	scope definedClassesDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyClass1FromP1 package definedClasses).
	self deny: (result includesAll: ClyClass1FromP1 package extendedClasses).