tests
testSubgroupsEnumeration

	scope := ClyMethodGroupScope 
		of: { ClyExtendedMethodGroup classScope: {ClySubclassLOfClass0FromPExtendedByP1}}.
	
	scope methodGroupsDo: [ :each | result add: each].
	
	self assert: result size equals: 1.
	self assert: result anyOne actualObject class equals: ClyExternalPackageMethodGroup.