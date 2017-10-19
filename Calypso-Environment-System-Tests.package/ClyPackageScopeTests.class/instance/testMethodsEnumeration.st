tests
testMethodsEnumeration

	scope := ClyPackageScope of: { ClyClass1FromP1 package }.
	scope methodsDo: [ :each | result add: each selector].
	
	self assert: (result includesAll: ClyClass1FromP1 localMethods).
	self assert: (result includesAll: ClyClass2FromP1 localMethods).
	self 
		assert: (result includesAll: ClyClass1FromP1 classSide localMethods) 
		description: 'Package scope should see class side methods too'.
	self 
		assert: (result includesAll: ClySubclassLOfClass0FromPExtendedByP1 localMethods) 
		description: 'Package scope should see all clas extensions'.