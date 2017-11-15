tests
testFillingWithSingleClasses

	| group |
	query scope basisObjects: { ClyClass1FromP1 }.
	queryResult fillWith: {ClyClass2FromP1}.
	
	self assert: queryResult size equals: 1.
	group := queryResult items first actualObject.
	self assert: group class equals: ClyVisibilityMethodGroup.
	self assert: group visibleClass equals: ClyClass2FromP1.
	self assert: group classScope equals: (ClyClassScope of: {ClyClass1FromP1}).