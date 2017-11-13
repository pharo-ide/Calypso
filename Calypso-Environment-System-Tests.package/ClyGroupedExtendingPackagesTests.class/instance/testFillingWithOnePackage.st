tests
testFillingWithOnePackage

	| group |
	queryResult fillWith: {ClyClass1FromP1 package}.
	
	group := queryResult items first actualObject.
	self assert: group class equals: ClyExternalPackageMethodGroup.
	self assert: group package equals: ClyClass1FromP1 package