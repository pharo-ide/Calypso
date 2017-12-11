tests
testClassesEnumeration
	scope := ClyPackageScope of: ClyClass1FromP1 package.
	
	scope classesDo: [ :each | result add: each ].
	
	self assert: (result includesAll: ClyClass1FromP1 package definedClasses).
	self deny: (result includesAll: ClyClass1FromP1 package extendedClasses)