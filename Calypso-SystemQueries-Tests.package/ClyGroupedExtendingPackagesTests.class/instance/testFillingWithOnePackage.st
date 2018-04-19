tests
testFillingWithOnePackage

	| item |
	queryResult fillWith: {ClyClass1FromP1 package}.
	
	item := queryResult items first.
	self assert: item class equals: ClyExtendingPackageItem.
	self assert: item package equals: ClyClass1FromP1 package.
	self 
		assert: (item queryForChildrenNamed: #methods) 
		equals: (ClyPackageExtensionMethods of: ClyClass1FromP1 package from: query scope)