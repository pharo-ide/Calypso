tests
testFillingWithSingleClasses

	| group |
	queryResult fillWith: {ClyClass2FromP1}.
	
	self assert: queryResult size equals: 1.
	group := queryResult items first actualObject.
	self assert: group class equals: ClySuperclassMethodGroup.
	self assert: group superclass equals: ClyClass2FromP1.
	self assert: group classScope equals: query scope.