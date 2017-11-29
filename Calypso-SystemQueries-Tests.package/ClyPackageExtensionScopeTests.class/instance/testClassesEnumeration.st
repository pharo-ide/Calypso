tests
testClassesEnumeration

	scope := ClyPackageExtensionScope of: { ClyClass1FromP1 package }.
	
	scope classesDo: [ :each | result add: each].
	
	self deny: (result includesAll: ClyClass1FromP1 package definedClasses).
	self assert: (result includesAll: ClyClass1FromP1 package extendedClasses).