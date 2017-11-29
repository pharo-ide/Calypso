tests
testMethodsEnumeration

	scope := ClyPackageExtensionScope of: { ClyClass1FromP1 package }.
	scope methodsDo: [ :each | result add: each].
	
	self deny: (result includesAll: ClyClass1FromP1 localMethods).
	self deny: (result includesAll: ClyClass2FromP1 classSide localMethods).
	self 
		assert: (result includesAll: ClySubclassLOfClass0FromPExtendedByP1 localMethods)