tests
testSubgroupsEnumeration

	scope := ClyMethodGroupScope 
		of: { ClyExtendedMethodGroup classes: {ClySubclassLOfClass0FromPExtendedByP1}}.
	
	scope methodGroupsDo: [ :each | result add: each].
	
	self assert: result size equals: 1.
	self assert: result first class equals: ClyExternalPackageMethodGroup.